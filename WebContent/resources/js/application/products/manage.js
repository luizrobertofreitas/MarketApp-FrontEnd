$(document).ready(function(){
	Products.init();
});

var Products = new function(){
	
	var newCategoryButton = null;
	var newCategoryDialog = null;
	
	this.init = function() {
		
		newCategoryButton = $('#newCategoryButton');
		newCategoryDialog = $('#newCategoryDialog');
		
		newCategoryDialog.dialog({
			autoOpen: false,
			width: 500,
			height: 350,
			modal: true,
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
		
		newCategoryButton.click(function(){
			newCategoryDialog.dialog('open');
			return false;
		});
		
		addCategoryLink.click(function(){
			
		});
	};
	
};