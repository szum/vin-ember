App.CompaniesShowController = Ember.ObjectController.extend

	productsByKind: ( ->
		products = @get('model').get('products')
		products.filterBy('synth')
		).property('model.products')