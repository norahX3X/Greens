class PagesController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
    @i = 0
  end
  def about
  end
  def profile
    @shipping_infos= ShippingInfo.all
  end
  def admin
    @categories = Category.all
    @products = Product.all
    @orders = Order.all
    @users = User.all
  end
  def users
    @users = User.all
  end
end
