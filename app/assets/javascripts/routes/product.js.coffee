App.ProductsShowRoute = Ember.Route.extend
	model: (params) -> @store.find('product', params.id)