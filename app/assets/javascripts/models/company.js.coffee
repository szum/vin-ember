App.Company = DS.Model.extend
	name: DS.attr('string')
	products: DS.hasMany('product', {async: true})

	imageUrl: ( ->
		path = "https://s3.amazonaws.com/vinsync/"
		path + @get('name') + "_Logo.png"
		).property('name')