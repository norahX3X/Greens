class Order < ApplicationRecord
    has_many :products, through: :order_details
    belongs_to :user
    belongs_to :shipping_info
end
