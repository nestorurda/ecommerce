class RemoveStockFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :stock, :integer
    remove_column :products, :sku, :string
    remove_column :products, :price, :decimal

  end
end
