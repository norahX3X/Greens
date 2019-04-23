class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :userID
      t.float :total
      t.integer :quantity
      t.integer :shippingID

      t.timestamps
    end
  end
end
