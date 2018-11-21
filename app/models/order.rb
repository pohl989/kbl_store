class Order < ApplicationRecord
  has_many :order_items
  has_many :products, through: :order_items
  belongs_to :user


  validates :order_number, presence: true
  validates :status, presence: true
  validates :order_date, presence: true



end
