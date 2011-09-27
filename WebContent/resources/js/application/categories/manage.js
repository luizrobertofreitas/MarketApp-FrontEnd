$(document).ready(function(){
	Categories.init();
});

var Categories = new function(){
	
	var newCategoryButton = null;
	var editCategoryButton = null;
	var removeCategoryButton = null;
	var refreshCategoryButton = null;
	
	var newCategoryDialog = null;
	
	var categoriesTable = null;
	
	var dialogMessages = null;
	
	var idTextField = null;
	var nameTextField = null;
	var descriptionTextField = null;
	
	/* Initialize Function */
	this.init = function() {
		Categories.initNewCategoryDialog();
		Categories.initTable();
		Categories.initButtons();
	};
	
	/* Initialize the new Category Dialog and it's fields */
	this.initNewCategoryDialog = function() {
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
	};
	
	/* Initialize all Buttons */
	this.initButtons = function() {
		newCategoryButton = $('#newCategoryButton');
		editCategoryButton = $('#editCategoryButton');
		removeCategoryButton = $('#removeCategoryButton');
		refreshCategoryButton = $('#refreshCategoryButton');
		
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
		
		refreshCategoryButton.button({
			icons : {
				primary : 'ui-icon-refresh'
			},
			text : true
		});
		
		/* Button handlers */
		newCategoryButton.click(function() {
			newCategoryDialog.dialog('open');
			return false;
		});
		
		editCategoryButton.click(function() {
			Categories.loadEditDialog();
		});
		
		refreshCategoryButton.click(function() {
			/* Reloading table */
			Categories.reloadTable();
		});
	};
	
	/* Initialize the table */
	this.initTable = function() {
		categoriesTable = $('#categoriesTable').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",
			"iDisplayLength": 15,
			"bLengthChange": false,
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
				
				/* Reloading table */
				Categories.reloadTable();
				
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
				
				/* Reloading table */
				Categories.reloadTable();
				
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
					Categories.reloadTable();
					Application.runSuccessNotification(response.method, response.message);
				}
			});
		}
	};
	
	/* Method that reload the table */
	this.reloadTable = function() {
		if(!Application.isUndefinedObject(categoriesTable)) {
			$.read('/marketapp-be/resources/categories/list', function(response) {
				/* Get the common attributes in the JSON object */
				if(response.status == 'success') {
					if(!Application.isUndefinedObject(categoriesTable)) {
						categoriesTable.fnClearTable();
						categoriesTable.fnAddData(response.categories);
					}
				}
			});
		}
	};
	
	/* Load Category function */
	this.loadEditDialog = function() {
		
		var aData = Application.getSelectedRowData(categoriesTable);
		
		if(aData) {
			$.read('/marketapp-be/resources/categories/' + aData.id, function(response) {
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
		}
		else {
			alert('É necessário selecionar um registro para editar');
		}
	};
};