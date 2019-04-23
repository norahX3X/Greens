class RemoveColumnsFromProductInfo < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_infos, :productID , :integer
    remove_column :product_infos, :sellerID , :integer
    add_column :product_infos, :product_id , :integer
    add_column :product_infos, :seller_id , :integer
  end
end
