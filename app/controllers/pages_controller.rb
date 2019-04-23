class PagesController < ApplicationController
  def home
    @categories = Category.all
  end
  def about
  end
  def profile
  end
  def admin
    @categories = Category.all
    @products = Product.all
    @orders = Order.all
    @users = User.all
  end
end
