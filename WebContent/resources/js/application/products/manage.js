$(document).ready(function(){
	Products.init();
});

var Products = new function(){
	
	var newProductButton = null;
	var newProductDialog = null;
	var productsTable = null;
	
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
		
		/* Inputs configuration */
		productPrice.maskMoney({symbol:'R$ ', showSymbol:false, thousands:'.', decimal:',', symbolStay: true});
		productQuantity.maskMoney({thousands:'.', allowZero: true, allowNegative: false, defaultZero: true, precision: 0});
		
		newProductButton = $('#newProductButton');
		newProductDialog = $('#newProductDialog');
		productsTable = $('#productsTable');
		
		filterClearOneButton = $('#filterClearOne');
		filterClearOneButton.button();
		
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
		
		newProductButton.click(function(){
			newProductDialog.dialog('open');
			return false;
		});
	};
};