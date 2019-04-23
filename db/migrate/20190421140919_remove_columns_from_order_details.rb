class RemoveColumnsFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :orderID , :integer
    remove_column :order_details, :productID , :integer
    add_column :order_details, :order_id , :integer
    add_column :order_details, :product_id , :integer
  end
end
