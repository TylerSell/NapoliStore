class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :detail_1, :detail_2, :detail_3, :detail_4, :detail_5, :detail_6, :quantity_sm, :quantity_med, :quantity_large, :quantity_xl
  has_one :collection
  has_one :category
end
