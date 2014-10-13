App.Productentry = DS.Model.extend
	title: DS.attr('string')
	url: DS.attr('string')
	location: DS.attr('string')
	price: DS.attr('number')
	endDate: DS.attr('string')
	image: DS.attr('string')
	product: DS.belongsTo('product')