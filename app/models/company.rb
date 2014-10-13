class Company < ActiveRecord::Base
	has_many :products
	scope :active_companies, -> { joins(:products).where('synth = true OR drum = true OR sampler = true').uniq }
end