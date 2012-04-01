class CreateProductManagerProducts < ActiveRecord::Migration
  def change
    create_table :product_manager_products do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
