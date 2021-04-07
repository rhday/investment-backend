User.destroy_all
Account.destroy_all
Transaction.destroy_all

user = User.create(name: "Ziggy", username: "Stardust", password: "password")

account = user.accounts.create(name: 'Investment', balance: 1000)

transaction_one = Transaction.create(account_id: 1, amount: 10, kind: 'deposit', date: Date.today, asset: 'Bitcoin')

transaction_two = Transaction.create(account_id: 1, amount: 10, kind: 'withdraw', date: Date.today, asset: 'Spending Money')

#transaction_test = Transaction.create(account_id: 1, amount: 10, kind: 'falsy', date: Date.today, asset: 'Spending Money')