class Order < ApplicationRecord
  has_many :order_items
  has_many :products, through: :order_items
  belongs_to :customer, class_name: "User", foreign_key: :customer_id
  belongs_to :preparer, class_name: "User", foreign_key: :preparer_id
  has_many :inventory_count

  enum status: {pending: 0, packing: 1, shipped: 2}

  validates :order_number, presence: true
  validates :status, presence: true
  validates :order_date, presence: true
  validates :customer_id, presence: true
  validates :preparer_id, presence: true


end
