class TransactionItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :transaction
  has_one :product
end
