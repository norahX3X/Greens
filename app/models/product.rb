class Product < ApplicationRecord
    belongs_to :category
    has_many :orders, through: :order_details
    has_many :carts, through: :cart_items
    has_many :users, through: :product_infos
end
