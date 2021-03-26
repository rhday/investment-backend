class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :asset
  belongs_to :account
end
