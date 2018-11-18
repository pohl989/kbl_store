class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    products = Product.new(product_params)
    if product.save
      render json: product
    else render json: {errors: product.errors}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    product.update(complete: !item.complete)
    render json: product
  end

  def destroy
    Product.find(params[:id]).destroy
    render json: {message: 'Product deleted'}
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end


end
