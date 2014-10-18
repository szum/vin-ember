App.ProductShowController = Ember.ObjectController.extend


  page: 1
  perPage: 10

  productEntries: ( ->
  	@get('model').get('productentries')
  	).property('model.productentries')

  totalPages: ( ->
    Math.ceil(@get('productEntries').get('length') / @get('perPage'))
  ).property('productEntries.length', 'perPage')
  
  pages: ( ->
    collection = Ember.A();
    i = 0
    while i < @get('totalPages')
      collection.pushObject Ember.Object.create
        number: i + 1
      i++
    collection;      
  ).property('totalPages')
  
  hasPages: ( ->
    @get('totalPages') > 1
  ).property('totalPages')
  
  prevPage: ( ->
    page = @get('page');
    totalPages = @get('totalPages');
    
    if page > 1 && totalPages > 1
      page - 1
    else
      null
  ).property('page', 'totalPages')
  
  nextPage: ( ->
    page = @get('page')
    totalPages = @get('totalPages')
    
    if page < totalPages && totalPages > 1
      page + 1
    else
      null
  ).property('page', 'totalPages')
 
  paginatedContent: ( ->
  	numPerPage = @get('perPage')
  	start = (@get('page') - 1) * numPerPage
  	end = start + numPerPage
  	@get('arrangedContent').slice start, end
  	).property('page', 'perPage', 'arrangedContent.[]'),
  
  selectPage: (number) ->
    @set('page', number)
  

	lastYearPrice: ( ->
		@get('model.productprices').objectAt(1)
	).property('model.productprices.[]')