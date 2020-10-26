class Product < ApplicationRecord

  belongs_to :collection
  belongs_to :category

  validates :name, presence => true
  validates :description, presence => true, length => { maximum => 1000 }
  validates :price, numericality => { greater_than_or_equal_to => 0 }
  validates :quantity_sm, :quantity_med, :quantity_large, :quantity_xl, numericality => { greater_than_or_equal_to => 0 }
  validates :detail_1, :detail_2, :detail_3, :detail_4, :detail_5, :detail_6, length => { maximum => 1000 }, allow_nil => true 
  validates :photo, url => true


end
