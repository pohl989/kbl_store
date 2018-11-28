class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :description
      t.string :title
      t.decimal :price
      t.string :product_number
      t.string :image
      t.integer :status, index: true
      t.timestamps
    end
  end
end
