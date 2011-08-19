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
		
		submitButton = $('#button');
		resetButton = $('#reset');
		
		if(idText.val() != null) {
			messageOk.hide();
			messageOkLeft.empty();
			
			messageError.hide();
			messageErrorLeft.empty();
			
			Categories.load();
		}
		
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
		
		//idText.empty();
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
		$.read('/marketapp-be/resources/categories/2' /*+ idText.val()*/, function(response) {
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