class OrdersController < ApplicationController
  def index
    render json: Order.all
  end

  def create
    order = Order.new(order_params)
    if order.save
      render json: order
    else
      render json: {error: order.errors}, status: :unprocessable_entity
    end
  end

  def update
    order = Order.find(params[:id])
    order.update(complete: !item.complete)
    render json: order
  end

  def destroy
    Order.find(params[:id]).destroy
    render json: {message: 'Order deleted'}
  end


  def show

  end

  private

  def order_params
    params.require(:order).permit(:order_number, :status, :order_date)
  end

end
