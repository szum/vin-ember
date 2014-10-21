App.CompaniesShowRoute = Ember.Route.extend

	queryParams: {	
		kind: { refreshModel: true }
	}

	activate: -> 
		@controllerFor('companies').set 'companyIsSelected', true
		@controllerFor('companies').set 'companiesIsSelected', false
	deactivate: -> @controllerFor('companies').set 'companyIsSelected', false
	
	model: (params) -> @store.find 'company', params.company_id

	renderTemplate: -> 
		@render 'companies/show', 
			into: 'companies'
			outlet: 'company-products'
			controller: 'companiesShow'
		@render 'companies/logo',
			into: 'companies'
			outlet: 'company-logo'
			controller: 'companiesShow'
