class Order < ApplicationRecord
  has_many :products
  has_one :user


  validates :order_number, presence: true
  validates :status, presence: true
  validates :order_date, presence: true



end
