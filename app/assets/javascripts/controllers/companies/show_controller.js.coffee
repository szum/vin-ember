App.CompaniesShowController = Ember.ObjectController.extend
	needs: ['application']

	isProductVisible: false

	products: ( ->
		if @get('controllers.application.kind') then @get('filteredProducts') else @get('model').get('products')
		).property('controllers.application.kind', 'filteredProducts', 'model.products')

	filteredProducts: ( ->
		kind = @get('controllers.application').get('kind')
		products = @get('model').get('products')
		products.filterBy(kind)
		).property('controllers.application.kind', 'model.products')