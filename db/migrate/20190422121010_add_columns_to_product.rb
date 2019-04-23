class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stack, :integer
    add_column :products, :price, :float
    add_column :products, :farm, :string
    add_column :products, :description, :string
  end
end
