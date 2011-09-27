$(document).ready(function(){
	Products.init();
});

var Products = new function(){
	
	var newProductButton = null;
	var newProductDialog = null;
	
	var productsTable = null;	
	var productTabs = null;
	
	var productId = null;
	var productName = null; 
	var productDescription = null;
	var productPrice = null;
	var productQuantity = null;
	
	var filterClearOneButton = null;
	
	this.init = function() {
		
		/* Inputs */
		productId = $('#productId');
		productName = $('#productName');
		productDescription = $('#productDescription');
		productPrice = $('#productPrice');
		productQuantity = $('#productQuantity');
		
		newProductButton = $('#newProductButton');
		newProductDialog = $('#newProductDialog');
		
		filterClearOneButton = $('#filterClearOne');
		
		productTabs = $('#productTabs');
		productTabs.tabs();
		
		/* Dialog configuration */
		newProductDialog.dialog({
			autoOpen: false,
			width: 'auto',
			height: 'auto',
			modal: true,
			resizable: false,
			buttons: {
				"Salvar": function() {
					
					
				}, 
				"Cancelar": function() { 
					$(this).dialog("close"); 
				} 
			}
		});
		
		/* Buttons configuration */
		newProductButton.button({
			icons : {
				primary : 'ui-icon-circle-plus'
			},
			text : true
		});
		
		filterClearOneButton.button({
			icons: {
				primary : 'ui-icon-arrowrefresh-1-s'
			},
			text : true
		});
		
		newProductButton.click(function(){
			newProductDialog.dialog('open');
			return false;
		});
		
		productsTable = $('#productsTable');
		productsTable.tablesorter({ debug: false, sortList: [[0, 0]], widgets: ['zebra'] })
	    	.tablesorterPager({ 	container: $("#pagerOne"), positionFixed: false })
	    	.tablesorterFilter({ 	filterContainer: $("#filterBoxOne"),
	        						filterClearContainer: $("#filterClearOne"),
	        						filterColumns: [0, 1, 2],
	        						filterCaseSensitive: false
	    });
	};
};