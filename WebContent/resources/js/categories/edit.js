/* On ready */
$(document).ready(function() {
	Categories.init();
});

/* Categories singleton class */
var Categories = new function() {
	
	var idText = null;
	var nomeText = null;
	var descricaoText = null;
	
	var messageOk = null;
	var messageOkLeft = null;
	var messageError = null;
	var messageErrorLeft = null;
	
	var submitButton = null;
	var resetButton = null;
	
	/* Initialize components */
	this.init = function() {
		
		idText = $('#id');
		nomeText = $('#nome');
		descricaoText = $('#descricao');
		
		messageOk = $('#message-green');
		messageOkLeft = $('.green-left');
		messageError = $('#message-red');
		messageErrorLeft = $('.red-left');
		
		submitButton = $('#submit');
		resetButton = $('#reset');
		
		if(idText.val() != null) {
			Categories.clear();		
			Categories.load();
		}
		
		/* Save button */
		submitButton.click(function() {
			if(idText.val().match('^(0|[1-9][0-9]*)$')) {
				Categories.update();
			}
			else {
				Categories.create();
			}
		});
	};
	
	/* Cleaning all elements */
	this.clear = function() {
		messageOk.fadeOut();
		messageOkLeft.empty();
		
		messageError.fadeOut();
		messageErrorLeft.empty();
	};
	
	/* Update the current record */
	this.update = function() {
		Categories.clear();
		
		$.update('/marketapp-be/resources/categories/update', {id: idText.val(), name: nomeText.val(), description: descricaoText.val()}, function(response){
			if(response.status == 'success') {
				messageOkLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageOk.fadeIn();
				
				/* Load data values */
				nomeText.val(response.category.name);
				descricaoText.val(response.category.description);

				/* Disable reset button */
				resetButton.attr('disabled', 'disabled');
			}
			else {
				messageErrorLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageError.fadeIn();
			}
		});
	};
	
	/* Create new record */
	this.create = function() {
		Categories.clear();
		
		$.create('/marketapp-be/resources/categories/create', {name: nomeText.val(), description: descricaoText.val()}, function(response) {
			if(response.status == 'success') {
				messageOkLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageOk.fadeIn();
			
				/* Load data values */
				idText.val(response.category.id);
				nomeText.val(response.category.name);
				descricaoText.val(response.category.description);

				/* Disable reset button */
				resetButton.attr('disabled', 'disabled');
			}
			else {
				messageErrorLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageError.fadeIn();
			}
		});
	};
	
	/* Edit category function */
	this.load = function() {
		
		nomeText.empty();
		descricaoText.empty();
		
		$.read('/marketapp-be/resources/categories/' + idText.val(), function(response) {
			/* Get the common attributes in the JSON object */
			if(response.status == 'success') {
				messageOkLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageOk.fadeIn();
				
				/* Load data values */
				nomeText.val(response.category.name);
				descricaoText.val(response.category.description);

				/* Disable reset button */
				resetButton.attr('disabled', 'disabled');
			}
			else {
				messageErrorLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				messageError.fadeIn();
			}
		});
	};
};