App.DropdownView = Ember.View.extend
	tagName: "li"
	className: "dropdown"
	click: (evt) ->
		@get('controller').setProperties
			isSynthDropdownVisible: false
			isDrumDropdownVisible: false
			isSamplerDropdownVisible: false
		kind = @get('controller.kind')
		if kind == 'synth'
			@get('controller').toggleProperty 'isSynthDropdownVisible'
		else if kind == 'drum'
			@get('controller').toggleProperty 'isDrumDropdownVisible'
		else if kind == 'sampler'
			@get('controller').toggleProperty 'isSamplerDropdownVisible'