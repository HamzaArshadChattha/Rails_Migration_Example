class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to :root
    end
  end

  private

  def product_params
    # debugger
    params.permit(:title, :quantity, :price)
  end
end
