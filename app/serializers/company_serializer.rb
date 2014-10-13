class CompanySerializer < ActiveModel::Serializer
	embed :ids
	attributes :id, :name
	has_many :products

	def products
		object.products.active_products
	end
end