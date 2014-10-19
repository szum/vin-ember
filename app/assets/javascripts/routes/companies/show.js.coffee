App.CompaniesShowRoute = Ember.Route.extend

	queryParams: {	
		kind: { refreshModel: true }
	}

	activate: -> @controllerFor('companies').set 'isProductsVisible', true
	deactivate: -> @controllerFor('companies').set 'isProductsVisible', false
	model: (params) -> @store.find 'company', params.company_id

