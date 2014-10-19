App.ApplicationController = Ember.Controller.extend
	queryParams: ['kind']
	kind: null

	isDropdownVisible: false

	navCompanies: ( ->
		companies = @store.find('company')
		).property()