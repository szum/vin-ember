App.ApplicationController = Ember.Controller.extend
	isDropdownVisible: false

	navProducts: ( ->
		if @get('isDropdownVisible')
			@store.find 'product'
	).property('isDropdownVisible')
		