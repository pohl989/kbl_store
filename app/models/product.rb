class Product < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :users, through: :orders

  enum status: {pending: 0, packing: 1, shipped: 2}

  validates :description, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :product_number, presence: true
end
