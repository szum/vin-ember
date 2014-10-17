App.ProductShowController = Ember.ObjectController.extend

	productPrices: ( ->
		@get('model').get('productprices')
	).property('model.productprices')

	lastYearPrice: ( ->
		@get('model.productprices').objectAt(1)
	).property('model.productprices.[]')