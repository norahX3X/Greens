class CreateShippingInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_infos do |t|
      t.integer :user_id
      t.integer :zip
      t.string :adress
      t.string :city
      t.string :phone_num

      t.timestamps
    end
  end
end
