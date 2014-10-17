App.CompaniesController = Ember.ArrayController.extend
	needs: ['application']
	
	isProductsVisible: false

	filteredProducts: ( ->
		kind = @get('controllers.application').get('kind')
		products = @store.find('product')
		if kind
			products.filterBy(kind)
		else
			products
		).property('controllers.application.kind')