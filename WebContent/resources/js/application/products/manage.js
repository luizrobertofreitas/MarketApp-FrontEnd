$(document).ready(function(){
	Products.init();
});

var Products = new function(){
	
	var newCategoryButton = null;
	var newCategoryDialog = null;
	var categoriesTable = null;
	
	this.init = function() {
		
		newCategoryButton = $('#newCategoryButton');
		newCategoryDialog = $('#newCategoryDialog');
		categoriesTable = $('#categories');
		
		/* Dialog configuration */
		newCategoryDialog.dialog({
			autoOpen: false,
			width: 400,
			height: 300,
			modal: true,
			resizable: false,
			buttons: {
				"Salvar": function() {
					
					//$('#form-data').validate();
					
					var newTr = '<tr>';
					newTr += '<td>2</td><td>' + name.val() + '</td><td>' + description.val() + '</td><td>Go</td></tr>';
					
					$('table tr:last').after(newTr);
												
					$(this).dialog("close");
				}, 
				"Cancelar": function() { 
					$(this).dialog("close"); 
				} 
			}
		});
		
		/* Buttons configuration */
		newCategoryButton.button({
			icons : {
				primary : 'ui-icon-circle-plus'
			},
			text : true
		});
		
		newCategoryButton.click(function(){
			newCategoryDialog.dialog('open');
			return false;
		});
	};
};