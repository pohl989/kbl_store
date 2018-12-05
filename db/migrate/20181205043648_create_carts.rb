class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.has_many :cart_items

      t.timestamps
    end
  end
end
