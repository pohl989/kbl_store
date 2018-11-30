class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :code
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
