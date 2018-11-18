class Product < ApplicationRecord

  validates :description, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :product_number: true
end
