App.CompaniesRoute = Ember.Route.extend

	model: -> @store.find 'product'

	activate: -> @controllerFor('companies').set 'companiesIsSelected', true
	deactivate: -> @controllerFor('companies').set 'companiesIsSelected', false