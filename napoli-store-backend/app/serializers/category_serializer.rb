class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :collection_id
  has_one :collection
end
