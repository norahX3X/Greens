class AddCoulmnsToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :items, :integer, array: true, default: []
  end
end
