/* On ready */
$(document).ready(function() {
	Categories.init();
});

/* Categories singleton class */
var Categories = new function() {
	
	var idText = $('#id');
	var nomeText = $('#nome');
	var descricaoText = $('#descricao');
	
	var messageOk = $('#message-green');
	var messageOkLeft = $('.green-left');
	var messageError = $('#message-red');
	var messageErrorLeft = $('.red-left');
	
	var resetButton = $('#reset');
	var submitButton = $('#button');
	
	/* Initialize components */
	this.init = function() {
		
		if(idText.val() != null) {
			Categories.load();
		}
		
		/* Reset button */
		resetButton.click(function() {
			Categories.clear();
		});
		
		/* Save button */
		submitButton.click(function() {
			if(idText.val() != null) {
				Categories.update();
			}
			else {
				Categories.create();
			}
		});
	};
	
	/* Cleaning all elements */
	this.clear = function() {
		messageOk.hide();
		messageOkLeft.empty();
		
		messageError.hide();
		messageErrorLeft.empty();
		
		idText.empty();
		nomeText.empty();
		descricaoText.empty();
	};
	
	/* Update the current record */
	this.update = function() {
		//TODO - update the current data
	};
	
	/* Create new record */
	this.create = function() {
		//TODO - create the current data
	};
	
	/* Edit category function */
	this.load = function() {
		$.read('/marketapp-be/resources/categories/' + idText.val().substring(1, idText.val().length), function(response){
			
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