class Product < ActiveRecord::Base
	has_many :productentries
	has_many :productprices
	belongs_to :company
	scope :active_products, -> { where('synth = true OR drum = true OR sampler = true') }

	def get_annual_prices
		ordered_prices = self.productprices.order("reference_date ASC") # Call the database to get all prices
		start_date = ordered_prices.first.reference_date # Grab the earliest price according to reference date
		annual_prices_array = [] # Returned prices are appended to an array
		while start_date < Time.now 
			annual_prices = ordered_prices.where("reference_date >= ? AND reference_date <= ?", start_date, start_date + 1.year)
			unless annual_prices.empty? 
				annual_prices_array << annual_prices.last
			end
			start_date += 1.year
		end
		annual_prices_array
	end
end