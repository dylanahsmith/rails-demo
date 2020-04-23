class AddInitialProduct < ActiveRecord::Migration[6.1]
  def up
    Product.create(title: "First Product")
    ProductHandle.create(handle: "first-product")
  end

  def down
    ProductHandle.delete_all
    Product.delete_all
  end
end
