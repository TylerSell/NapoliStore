class Category < ApplicationRecord
  belongs_to :collection

  validates :name, presence => true
  
end
