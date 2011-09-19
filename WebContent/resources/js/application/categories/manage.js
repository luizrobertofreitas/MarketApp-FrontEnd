$(document).ready(function(){
	Categories.init();
});

var Categories = new function(){
	
	var newCategoryButton = null;
	var newCategoryDialog = null;
	
	var dialogMessages = null;
	
	var idTextField = null;
	var nameTextField = null;
	var descriptionTextField = null;
	
	/* Init Function */
	this.init = function() {
		
		newCategoryButton = $('#newCategoryButton');
		newCategoryDialog = $('#newCategoryDialog');
		
		dialogMessages = $('#dialogMessages');
		dialogMessages.hide();
		
		idTextField = $('#id');
		nameTextField = $('#name');
		descriptionTextField = $('#description');
		
		/* Dialog configuration */
		newCategoryDialog.dialog({
			autoOpen: false,
			width: 'auto',
			height: 'auto',
			modal: true,
			resizable: false,
			buttons: {
				"Salvar": function() {
					if(idTextField.val().match('^(0|[1-9][0-9]*)$')) {
						Categories.update();
					}
					else {
						Categories.create();
					}
					Categories.clearFields();
				}, 
				"Cancelar": function() { 
					$(this).dialog("close");
					Categories.clearFields();
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
		
		/* Loading all categories */
		Categories.loadAll();
	};
	
	/* Cleaning all elements */
	this.clearFields = function() {
		idTextField.val('');
		nameTextField.val('');
		descriptionTextField.val('');
		dialogMessages.empty();
		dialogMessages.hide();
	};
	
	/* Update the current record */
	this.update = function() {
		$.update('/marketapp-be/resources/categories/update', {id: idTextField.val(), name: nameTextField.val(), description: descriptionTextField.val()}, function(response){
			if(response.status == 'success') {
				Categories.loadAll();
				
				/* Open dialog to edit */
				newCategoryDialog.dialog('close');
				Application.runSuccessNotification(response.method, response.message);
			}
			else {
				dialogMessages.append(Application.createErrorMessage(Application.splitMessages(response.message)));
				dialogMessages.fadeIn();
				return false;
			}
		});
	};
	
	/* Create new record */
	this.create = function() {
		$.create('/marketapp-be/resources/categories/create', {name: nameTextField.val(), description: descriptionTextField.val()}, function(response) {
			if(response.status == 'success') {
				Categories.loadAll();
				
				/* Open dialog to edit */
				newCategoryDialog.dialog('close');
				Application.runSuccessNotification(response.method, response.message);
			}
			else {
				dialogMessages.append(Application.createErrorMessage(Application.splitMessages(response.message)));
				dialogMessages.fadeIn();
				return false;
			}
		});
	};
	
	/* Remove a category */
	this.destroy = function(id) {
		if(confirm('Deseja excluir o registro selecionado?')) {
			$.destroy({
				url: '/marketapp-be/resources/categories/destroy/' + id,
				success: function(response) {
					/* The JSON object already comes with all categories */
					Categories.loadFromResponse(response);
					Application.runSuccessNotification(response.method, response.message);
				}
			});
		}
	};
	
	/* Load Category function */
	this.load = function(id) {
		$.read('/marketapp-be/resources/categories/' + id, function(response) {
			/* Get the common attributes in the JSON object */
			if(response.status == 'success') {
				/* Load data values */
				idTextField.val(response.category.id);
				nameTextField.val(response.category.name);
				descriptionTextField.val(response.category.description);
				
				/* Open dialog to edit */
				newCategoryDialog.dialog('open');
			}
		});
	};
	
	/* This function loads all categories */
	this.loadAll = function(){
		$.read('/marketapp-be/resources/categories/list', function(response) {
			Categories.loadFromResponse(response);
		});
	};
	
	this.loadFromResponse = function(response) {
		
		$('.data').remove();
		
		/* Iterate over the response object */
		$.each(response.categories, function(index, obj) {
			var idTd = '<td class="codigo">' + obj.id + '</td>';
			var nomeTd = '<td class="string">' + obj.name + '</td>';
			var descricaoTd = '<td class="string">' + obj.description + '</td>';
			var optionsTd = '<td class="options">' + 
							'<a href="#" onclick="Categories.load(' + obj.id + ');">Editar</a> ' +	
							'<a href="#" onclick="Categories.destroy(' + obj.id +');">Excluir</a>' +
							'</td>';

			var newTr = '<tr>' + idTd + nomeTd + descricaoTd + optionsTd + '</tr>';
			
			$('#categories tr:last').after(newTr);
			
			/* Running Zebra style for tables */
			Application.runZebraStyle();
		});
	};
};