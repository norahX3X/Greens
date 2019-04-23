class RemoveColumnsFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :quantity , :integer
    add_column :products, :quantity, :string

  end
end
