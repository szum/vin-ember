App.CompaniesShowController = Ember.ObjectController.extend
	needs: ['application']

	kind: Ember.computed.alias('controllers.application.kind')

	products: ( ->
		if @get('kind') then @get('filteredProducts') else @get('model.products')
		).property('kind', 'filteredProducts', 'model.products')

	filteredProducts: ( ->
		kind = @get('kind')
		products = @get('model.products')
		products.filterBy(kind)
		).property('kind', 'model.products')