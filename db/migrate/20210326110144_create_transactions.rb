class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.float :amount
      t.string :kind
      t.datetime :date
      t.string :asset

      t.timestamps
    end
  end
end
