$(document).ready(function(){
	Application.init();
});

var Application = new function() {
	
	var accountButton = null;
	var settingsButton = null;
	var accountDialog = null;
	var settingsDialog = null;
	
	this.init = function() {
		
		accountButton = $('#accountButton');
		settingsButton = $('#settingsButton');
		accountDialog = $('#accountDialog');
		settingsDialog = $('#settingsDialog');
		
		accountDialog.dialog({
			autoOpen: false,
			width: 500,
			height: 350,
			modal: true,
			buttons: {
				"Salvar": function() {
					$(this).dialog("close");
				}, 
				"Cancelar": function() { 
					$(this).dialog("close"); 
				} 
			}
		});
		
		settingsDialog.dialog({
			autoOpen: false,
			width: 500,
			height: 350,
			modal: true,
			buttons: {
				"Salvar": function() {
					$(this).dialog("close");
				}, 
				"Cancelar": function() { 
					$(this).dialog("close"); 
				} 
			}
		});
		
		accountButton.click(function(){
			accountDialog.dialog('open');
			return false;
		});
		
		settingsButton.click(function(){
			settingsDialog.dialog('open');
			return false;
		});
		
		/* hover effects in all JQuery UI buttons */
		$('.icon-button').hover(
			function() { $(this).addClass('ui-state-hover'); }, 
			function() { $(this).removeClass('ui-state-hover'); }
		);
	};	
};