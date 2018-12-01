class CreateInventoryCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_counts do |t|
      t.string :title
      t.string :size
      t.string :quantity

      t.timestamps
    end
  end
end
