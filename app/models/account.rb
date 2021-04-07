class Account < ApplicationRecord

    has_many :transactions

    belongs_to :User

    validates :name, :balance, presence: true

    def update_balance(transaction)
        #byebug #anytime a transaction is made, this function is called to update the balance associated to that account.
        if transaction.kind == 'deposit'
            self.balance = self.balance + transaction.amount
            self.save
        elsif transaction.kind == 'withdraw'
            if self.balance >= transaction.amount
            self.balance = self.balance - transaction.amount
            self.save
            else
                return 'Balance too low.'
            end
        end 
    end

    def undo_balance(transaction) 
        if transaction.kind == 'deposit'
            if self.balance >= transaction.amount
                self.balance = self.balance - transaction.amount
                self.save
            else
                return 'Balance too low.'
            end
        elsif transaction.kind == 'withdraw'
            self.balance = self.balance + transaction.amount
            self.save
        end 
    end

end
