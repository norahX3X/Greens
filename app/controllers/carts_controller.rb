class CartsController < ApplicationController
  def index

  end

  def new
    # @cart= Cart.new
    @cart= Cart.create(0)


    #  @cart_item = cartItem.new
    # redirect_to products_path
  end
  def create
   
    # product = Product.create(product_params)
    # redirect_to products_path
  end

  private 
    def cart_params
        params.require(:cart).permit(:total_items)
    end
  #   def cart_item_params
  #     params.require(:cart_item).permit(:cart_id, :product_id, :amount)
  # end
end
