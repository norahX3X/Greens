class CartsController < ApplicationController
  def index
<<<<<<< HEAD
    @carts=Cart.all
=======

>>>>>>> d68fe6b4b46d7b7f9caa05393abcc223032347e1
  end

  def new
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
