class ProductpriceSerializer < ActiveModel::Serializer
	attributes :id, :med_price, :high_price, :low_price, :reference_date, :product_id
end