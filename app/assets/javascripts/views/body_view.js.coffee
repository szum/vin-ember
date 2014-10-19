App.BodyView = Ember.View.extend

	click: (evt) ->
		@get('controller').setProperties
			isDropdownVisible: false