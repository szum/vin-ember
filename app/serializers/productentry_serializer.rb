class ProductentrySerializer < ActiveModel::Serializer
	attributes :id, :title, :url, :location, :price, :end_date, :image, :product_id
end