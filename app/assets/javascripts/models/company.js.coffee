App.Company = DS.Model.extend
	name: DS.attr('string')
	products: DS.hasMany('product', {async: true})

	imageUrl: ( ->
		path = "https://s3.amazonaws.com/vinsync/"
		companyName = @get('name').replace(/\s+/g, '_')
		path + companyName + "_Logo.png"
		).property('name')