class Api::V1::ProductentriesController < ApplicationController

	def index
		render json: Productentry.all
	end

	def show
		@productentry = Productentry.find(params[:ids])
		render json: @productentry
	end

	private

	def productentry_params
	  params[:productentry]
	end
end