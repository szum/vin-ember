App.ProductsShowRoute = Ember.Route.extend


	activate: -> @controllerFor('companies.show').set 'isProductVisible', true
	deactivate: -> @controllerFor('companies.show').set 'isProductVisible', false
	model: (params) -> @store.find 'product', params.product_id