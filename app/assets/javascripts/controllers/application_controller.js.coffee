App.ApplicationController = Ember.Controller.extend
	queryParams: ['kind']
	kind: null

	isSynthDropdownVisible: false
	isDrumDropdownVisible: false
	isSamplerDropdownVisible: false

	navCompanies: ( ->
		companies = @store.find('company')
		).property()