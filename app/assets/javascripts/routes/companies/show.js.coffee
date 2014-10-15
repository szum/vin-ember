App.CompaniesShowRoute = Ember.Route.extend

	renderTemplate: ->
		@render { outlet: 'dropdown-menu' }
	activate: -> @controllerFor('companies').set 'isProductsVisible', true	
	model: (params) -> @store.find 'company', params.id

