class ProductsController < ApplicationController
  def index
    @products=Product.all
    @categories = Category.all
   

    # render
  end

  def show
    #get product paam
    @product=Product.find(params[:id])
    # get avilability from stack param 
    @cart_item = CartItem.new

    @avilability = "Out Of Stack"
    # change colors too
    if @product.stack > 0 && @product.stack < 5
      @avilability = "Limited"
    elsif @product.stack > 5
      @avilability = "Avilable"
    end

  end
 

  def addCart
    p "added"
    # get user id and roduct id 
    # if current_user
    user_id = current_user.id
    # p params[:id]
    current_product = Product.find(params[:id])
    # creat new care item
    @cart_item = CartItem.create(cart_item_params) 
    #get user cart
    current_cart  = Cart.where(user_id: user_id).first
    #check if exist
    if current_cart
      current_cart.items << current_product.id #@cart_item.id
    else 
      current_cart= Cart.create(total_items: 1,user_id: user_id)
      current_cart.items << current_product.id
    end
    current_cart.errors.full_messages
    current_cart.save
    redirect_to products_path if @cart_item.save
  # end 
    # current_cart.add_item(params[:product_id])

      # item = items.where('product_id = ?', product_id).first
      # if item
      #   # increase the quantity of product in cart
      #   item.quantity + 1
      #   save
      # else
      #   # product does not exist in cart
      #   cart.items << Item.new(product_id: product_id, quantity: 1)
      # end
      # save
    
   
    # redirect to shopping cart or whereever

    # session[:product_id] = params[:product_id]
    # @product = Product.find(params[:product_id])
    # if session[:product_id].present?
    #   @temp = OrderTemp.new
    #   @temp.product_id = @product.id
    #   @temp.price = @product.price
    #   @temp.qty = 1
    #   @temp.save
    # end
    # @count = OrderTemp.count
    # render json: @count
    
    # redirect_to product_path(current_product)
    # redirect_to products_path

    end

  def new
    @product= Product.new
  end

  def create
      product = Product.create(product_params)
      redirect_to products_path
  end

  def edit
    @product =Product.find(params[:id])
  end

  def update
      product =Product.find(params[:id])
      product.update(product_params)
      redirect_to product 
  end

  def destroy
      product =Product.find(params[:id])
      product.destroy
      redirect_to products_path
  end

  private 
    def product_params
        params.require(:product).permit(:name, :image, :quantity, :category_id , :stack ,:price ,:farm ,:description)
    end
    def cart_item_params
      params.require(:cart_item).permit(:product_id, :amount, :cart_id)
   end
end
