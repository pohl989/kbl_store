class CreatePackageItems < ActiveRecord::Migration[5.2]
  def change
    create_table :package_items do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :package, foreign_key: true

      t.timestamps
    end
  end
end
