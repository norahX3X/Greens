class ShippingInfosController < ApplicationController
  def index
  end

  def new
    @shipping_info= ShippingInfo.new
  end

  def create
    shipping_info = ShippingInfo.create(shiping_info_params)
    redirect_to profile_path
  end

  def edit
    @shipping_info = ShippingInfo.find(params[:id])
    end

  def update
    shipping_info = ShippingInfo.find(params[:id])
    shipping_info.update(shipping_info_params)
        redirect_to profile_path 
  end

  def delete
  end

  private 
  def shiping_info_params
      params.require(:shipping_info).permit(:user_id, :zip, :adress, :city, :phone_num)
  end
end
