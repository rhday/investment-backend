Account
 has_many :transactions
 :balance - float, :name - string


Transaction
 belongs_to :account
 :account_id - integer, :amount - float, :kind - string, :date - datetime, :asset - string

User - stretch goal(watch globetrotter video)