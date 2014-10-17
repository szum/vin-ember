# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
	rootURL: '/'
	location: 'auto'

App.Router.map ->
	@resource 'companies', path: '/', ->
		@route 'show', path: '/:company_id', ->
			@resource 'products', ->
				@route 'show', path: '/:product_id'
