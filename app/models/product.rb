class Product < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :orders


  validates :description, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :product_number: true
end
