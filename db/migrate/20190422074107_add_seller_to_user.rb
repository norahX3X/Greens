class AddSellerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :seller, :boolean, default: false
    add_column :users, :seller_name, :string
  end
end
