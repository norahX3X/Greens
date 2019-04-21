class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    # get the clicked order 
    @order=Order.find(params[:id])
    # get all order details 
    orderDetails = OrderDetail.all
    @orderDetailsList =[]
    # push the ones with orderID equal to the one we want 
    orderDetails.each do |orderD|
    if(orderD.orderID == @order.id)
      @orderDetailsList.push(orderD)
    end
  end


  end

  def new
  end

  def edit
  end

  private 
    def order_params
        params.require(:Order).permit( :total, :quantity , :shippingID )
    end
end
