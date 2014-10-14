App.PricesChartComponent = Ember.Component.extend

	didInsertElement: ( ->
    graph = new Morris.Line
	    element: 'prices-chart'
	    data: @get('priceData')
	    xkey: 'reference_date'
	    ykeys: ['med_price']
	    labels: ['Median Price']
	    lineColors: ['#101010']
	    gridTextFamily: 'Helvetica, sans-serif'
	    preUnits: '$').property('priceData')