class Api::OrderItemsController < ApplicationController
  def index
    render json: Order_item.all 
  end

  def show
  end

  def new
  end

  def edit
  end
end
