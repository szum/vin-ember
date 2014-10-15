App.DropdownListComponent = Ember.Component.extend
	isDropdownVisible: false
	actions:
		toggle: ->
			@toggleProperty('isDropdownVisible')