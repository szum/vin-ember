class Productprice < ActiveRecord::Base
	belongs_to :product
	scope :sorted_by_date, -> { order 'reference_date DESC' }
	scope :current_price, -> { order('reference_date DESC').first }
	scope :last_year_price, -> { where("reference_date >= ? AND reference_date <= ?", 
		Time.now.beginning_of_year - 1.year, Time.now.beginning_of_year).order('updated_at DESC').first }
end