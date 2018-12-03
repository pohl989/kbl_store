class InventoryCount < ApplicationRecord
  has_many :product
  belongs_to :order
end
