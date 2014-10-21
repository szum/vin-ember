class LazyProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :desc, :year, :polyphony, :image, :oscillator, :revisions, :waveform, :control, :exclusion, :sampling, :memory, :company_id, :synth, :sampler, :drum
  has_many :productentries
  has_many :productprices, include: true

  def productprices
  	object.productprices.sorted_by_date
  end
end