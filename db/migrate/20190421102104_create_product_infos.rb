class CreateProductInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :product_infos do |t|
      t.integer :productID
      t.integer :sellerID
      t.float :price
      t.integer :stack

      t.timestamps
    end
  end
end
