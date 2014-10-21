App.CompaniesController = Ember.ArrayController.extend
	needs: ['application']
	kind: Ember.computed.alias('controllers.application.kind')

	companiesIsSelected: true
	companyIsSelected: false
	productIsSelected: false

	products: ( ->
		if @get('kind') then @get('filteredProducts') else @store.find('product')
		).property('kind', 'filteredProducts')

	filteredProducts: ( ->
		kind = @get('kind')
		products = @get('model')
		products.filterBy(kind)
		).property('kind', 'model')