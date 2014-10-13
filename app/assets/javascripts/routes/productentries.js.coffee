App.ProductentriesRoute = Ember.Route.extend
	
	model: -> @store.find 'productentry'