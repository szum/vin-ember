App.ProductsShowRoute = Ember.Route.extend

	activate: -> @controllerFor('companies').set 'productIsSelected', true
	deactivate: -> @controllerFor('companies').set 'productIsSelected', false

	model: (params) -> @store.find 'product', params.product_id

	renderTemplate: -> 
		@render 'products/show', 
			into: 'companies'
			outlet: 'product'
			controller: 'productsShow'