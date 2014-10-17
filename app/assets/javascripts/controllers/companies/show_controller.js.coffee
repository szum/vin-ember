App.CompaniesShowController = Ember.ObjectController.extend
	needs: ['application']

	isProductVisible: false

	filteredProducts: ( ->
		kind = @get('controllers.application').get('kind')
		products = @get('model').get('products')
		if kind
			products.filterBy(kind)
		else
			products
		).property('controllers.application.kind', 'model.products')