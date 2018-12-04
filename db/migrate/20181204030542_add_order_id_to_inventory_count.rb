class AddOrderIdToInventoryCount < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_counts, :order, :integer, index: true 
  end
end
