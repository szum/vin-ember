App.DropdownView = Ember.View.extend
	tagName: "li"
	className: "dropdown"
	click: (evt) ->
		@get('controller').setProperties
			isDropdownVisible: false

	doubleClick: (evt) ->
		@get('controller').setProperties
			isDropdownVisible: true