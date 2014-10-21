class LazyProductSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :desc, :year, :polyphony, :image, :oscillator, :revisions, :waveform, :control, :exclusion, :sampling, :memory, :company_id, :synth, :sampler, :drum
  has_many :productprices

  def productprices
  	object.productprices.sorted_by_date
  end
end