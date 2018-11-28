class AddFieldsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer_id, :integer, index: true
    add_column :orders, :preparer_id, :integer, index: true
  end
end
