class Api::V1::ProductsController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    render json: Product.active_products, each_serializer: LazyProductSerializer
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:ids])
    render json: @product, each_serializer: ProductSerializer
  end

  private
  
  def product_params
    params[:product]
  end
end
