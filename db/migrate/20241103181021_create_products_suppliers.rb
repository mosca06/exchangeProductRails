class CreateProductsSuppliers < ActiveRecord::Migration[7.2]
  def change
    create_table :products_suppliers do |t|
      t.references :product, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
