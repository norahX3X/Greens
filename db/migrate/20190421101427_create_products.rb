class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :catID
      t.string :name
      t.string :image
      t.integer :quantity

      t.timestamps
    end
  end
end
