class Product < ActiveRecord::Base
	has_many :productentries
	has_many :productprices
	belongs_to :company
	scope :active_products, -> { where('synth = true OR drum = true OR sampler = true') }
end