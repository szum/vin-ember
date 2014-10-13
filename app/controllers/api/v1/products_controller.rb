class Api::V1::ProductsController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    render json: Product.active_products
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  private
  
  def product_params
    params[:product]
  end
end
