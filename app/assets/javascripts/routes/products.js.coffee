App.ProductsRoute = Ember.Route.extend

	model: -> @store.find 'product'