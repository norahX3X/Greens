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
      p orderD.order_id
    if(orderD.order_id == @order.id)
      p "yes"
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
        params.require(:Order).permit( :total, :quantity , :shipping_id )
    end
end
