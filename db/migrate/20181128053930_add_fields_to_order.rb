class AddFieldsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer_id, :string
    add_column :orders, :preparer_id, :string
  end
end
