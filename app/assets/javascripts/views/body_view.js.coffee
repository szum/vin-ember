App.BodyView = Ember.View.extend

	click: (evt) ->
		@get('controller').setProperties
			isSynthDropdownVisible: false
			isDrumDropdownVisible: false
			isSamplerDropdownVisible: false