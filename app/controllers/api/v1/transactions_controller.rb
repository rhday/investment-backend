class Api::V1::TransactionsController < ApplicationController

    before_action :set_account
    
    def index
        @transactions = @account.transactions 
        render json: @transactions
    end 

    def show
        @transaction = Transaction.find(params[:id])
        render json: @transaction 
    end

    def create
        @transaction = @account.transactions.new(transaction_params)
        if @account.update_balance(@transaction) != "Balance too low."
            @transaction.save
            render json: @account
        else
            render json: {error: 'Balance too low.'} #error message not appearing
        end
    end 

    def destroy
       transaction = Transaction.find(params[:id])
       transaction.destroy
       @account.undo_balance(transaction)
       render json: transaction
    end 

    private

    def set_account
        @account = Account.find(params[:account_id])
    end 

    def transaction_params
        #the params require(.require) an account and permit (.permit) the attributes specified 
        params.require(:transaction).permit(:amount ,:account_id, :kind, :date, :asset)
    end  

end
