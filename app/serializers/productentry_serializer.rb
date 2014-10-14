class ProductentrySerializer < ActiveModel::Serializer
	attributes :id, :title, :url, :location, :condition, :price, :end_date, :image, :product_id
end