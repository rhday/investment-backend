class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance
  has_many :transactions
  belongs_to :user
end
