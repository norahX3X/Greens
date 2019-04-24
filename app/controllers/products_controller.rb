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

    @avilability = "Out Of Stack"
    # change colors too
    if @product.stack > 0 && @product.stack < 5
      @avilability = "Limited"
    elsif @product.stack > 5
      @avilability = "Avilable"
    end

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
        params.require(:product).permit(:name, :image, :quantity, :category_id)
    end
end
