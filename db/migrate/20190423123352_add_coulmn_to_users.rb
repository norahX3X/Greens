class AddCoulmnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cart_id, :int

  end
end
