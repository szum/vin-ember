class Api::V1::ProductpricesController < ApplicationController

	def index
		@productprices = Productprice.all
	  render json: @productprices
	end

	def show
		@productprice = Productprice.find(params[:ids])
	  respond_with @productprice
	end

	private

	def productprice_params
	  params[:productprice]
	end
end