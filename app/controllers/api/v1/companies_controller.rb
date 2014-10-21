class Api::V1::CompaniesController < ApplicationController

	def index
		render json: Company.active_companies, each_serializer: LazyCompanySerializer
	end

	def show
		@company = Company.find(params[:id])
		render json: @company
	end

	private

	def company_params
	  params[:company]
	end
end