class CartItemsController < ApplicationController
   
   
      def create
        # @cart_item = CartItem.new cart_item_params
        # redirect_to products_path if @cart_item.save
     end

     def destroy
       
     end
 
     private
    #  def cart_item_params
    #     params.require(:cart_item).(:product_id, :amount, :cart_id)
    #  end
end
