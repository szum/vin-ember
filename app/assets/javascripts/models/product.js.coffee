App.Product = DS.Model.extend
	name: DS.attr('string')
	year: DS.attr('number')
	polyphony: DS.attr('number')
	desc: DS.attr('string')
	image: DS.attr('string')
	oscillator: DS.attr('string')
	revisions: DS.attr('string')
	waveform: DS.attr()
	control: DS.attr()
	exclusion: DS.attr()
	sampling: DS.attr()
	memory: DS.attr()
	sampler: DS.attr('boolean')
	synth: DS.attr('boolean')
	drum: DS.attr('boolean')
	productentries: DS.hasMany('productentry')
	productprices: DS.hasMany('productprice')
	company: DS.belongsTo('company', {async: true})
	
	imageUrl: ( ->
		path = "https://s3.amazonaws.com/vinsync/"
		path + @get('image')
		).property('image')

	kind: ( ->
		if @get('drum')
			"Drum Machine"
		else if @get('sampler')
			"Sampler"
		else if @get('synth')
			polyphony = @get('polyphony')
			if polyphony == 1
				"Monophonic Synthesizer"
			else if polyphony == 2
				"Duophonic Synthesizer"
			else
				"Polyphonic Synthesizer").property('drum', 'sampler', 'synth', 'polyphony')

	medPrice: Ember.computed.alias('productprices.firstObject.med_price')
	lowPrice: Ember.computed.alias('productprices.firstObject.low_price')
	highPrice: Ember.computed.alias('productprices.firstObject.high_price')