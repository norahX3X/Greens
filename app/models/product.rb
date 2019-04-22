class Product < ApplicationRecord
    belongs_to :category
    has_many :order_details
    has_many :orders, through: :order_details

    has_many :carts, through: :cart_items

end
