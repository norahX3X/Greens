class Order < ApplicationRecord
    has_many :order_details
    has_many :products, through: :order_details

    belongs_to :user

    has_one :shipping_info


end
