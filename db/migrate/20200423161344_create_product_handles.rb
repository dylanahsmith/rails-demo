class CreateProductHandles < ActiveRecord::Migration[6.1]
  def change
    create_table :product_handles do |t|
      t.string :handle
      t.references :product, null: false, foreign_key: false

      t.timestamps
    end
  end
end
