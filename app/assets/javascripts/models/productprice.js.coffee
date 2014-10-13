App.Productprice = DS.Model.extend
	med_price: DS.attr('number')
	high_price: DS.attr('number')
	low_price: DS.attr('number')
	product: DS.belongsTo('product') 