class RemoveColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :seller , :boolean
    remove_column :users, :seller_name, :string


  end
end
