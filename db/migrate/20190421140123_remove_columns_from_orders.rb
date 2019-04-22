class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :orders, :userID , :integer
    remove_column :orders, :shippingID , :integer
    add_column :orders, :user_id , :integer
    add_column :orders, :shipping_id , :integer
  end
end
