class CartsController < ApplicationController
  def index
    user_id = current_user.id
    @current_cart_items= Cart.where(user_id: user_id).first.items
    p @current_cart_items

  end

  private 
    def cart_params
        params.require(:cart).permit(:total_items, :items , :user_id)
    end
    def cart_item_params
      params.require(:cart_item).permit(:product_id, :amount, :cart_id)
   end
end
