App.CompaniesRoute = Ember.Route.extend

	activate: -> @controllerFor('application').set 'isDropdownVisible', true
	renderTemplate: -> 
		@render { outlet: 'dropdown-menu' }
	model: -> @store.find 'company'