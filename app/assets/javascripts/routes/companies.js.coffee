App.CompaniesRoute = Ember.Route.extend

	model: -> @store.find 'company'