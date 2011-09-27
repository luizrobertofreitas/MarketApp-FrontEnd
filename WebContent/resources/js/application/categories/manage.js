$(document).ready(function(){
	Categories.init();
});

var Categories = new function(){
	
	var newCategoryButton = null;
	var editCategoryButton = null;
	var removeCategoryButton = null;
	
	var newCategoryDialog = null;
	
	var categoriesTable = null;
	
	var dialogMessages = null;
	
	var idTextField = null;
	var nameTextField = null;
	var descriptionTextField = null;
	
	/* Init Function */
	this.init = function() {
		
		newCategoryButton = $('#newCategoryButton');
		editCategoryButton = $('#editCategoryButton');
		removeCategoryButton = $('#removeCategoryButton');
		
		newCategoryDialog = $('#newCategoryDialog');
		
		dialogMessages = $('#dialogMessages');
		dialogMessages.hide();
		
		idTextField = $('#id');
		nameTextField = $('#name');
		descriptionTextField = $('#description');
		
		categoriesTable = $('#categoriesTable').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",
			"sAjaxSource": "/marketapp-be/resources/categories/list",
			"sAjaxDataProp": "categories",
			"aoColumns": [
				{ "mDataProp": "id", "aTargets": [0]},
				{ "mDataProp": "name", "aTargets": [1]},
				{ "mDataProp": "description", "aTargets": [2]}
			],
			"oLanguage": {
				"sUrl": "/marketapp-fe/resources/js/jquery-datatable/pt-br.txt"
			}
		});
		
		$('#categoriesTable tbody').click(function(event){
			$(categoriesTable.fnSettings().aoData).each(function(){
				$(this.nTr).removeClass('row_selected');
			});
			$(event.target.parentNode).addClass('row_selected');
		});
		
		
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
				primary : 'ui-icon-plus'
			},
			text : true
		});
		
		editCategoryButton.button({
			icons : {
				primary : 'ui-icon-pencil'
			},
			text : true
		});
		
		removeCategoryButton.button({
			icons : {
				primary : 'ui-icon-close'
			},
			text : true
		});
		
		/* Button handlers */
		newCategoryButton.click(function(){
			newCategoryDialog.dialog('open');
			return false;
		});
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
};