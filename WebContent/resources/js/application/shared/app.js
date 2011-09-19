$(document).ready(function(){
	Application.init();
});

var Application = new function() {
	
	var pageBody = null;
	
	var changePasswordButton = null;
	var accountButton = null;
	var settingsButton = null;
	var exitButton = null;
	
	var usernameChangePasswordTextField = null;
	var newPasswordChangePasswordTextField = null;
	var confirmNewPasswordChangePasswordTextField = null;
	
	var accountName = null;
	var accountUsername = null;
	var accountEmail = null;

	var settingsDialogMessages = null;
	var accountDialogMessages = null;
	var changePasswordDialogMessages = null;
	
	var changePasswordDialog = null;
	var accountDialog = null;
	var settingsDialog = null;
	
	var menu = null;
	
	/* Initialize */
	this.init = function() {
		
		pageBody = $('body');
		
		changePasswordButton = $('#changePasswordButton');
		accountButton = $('#accountButton');
		settingsButton = $('#settingsButton');
		exitButton = $('#exitButton');
		
		changePasswordDialog = $('#changePasswordDialog');
		accountDialog = $('#accountDialog');
		settingsDialog = $('#settingsDialog');
		
		usernameChangePasswordTextField = $('#username');
		newPasswordChangePasswordTextField = $('#newPassword');
		confirmNewPasswordChangePasswordTextField = $('#confirmNewPassword');
		
		accountUsername = $('#accountUsername');
		accountName = $('#accountName');
		accountEmail = $('#accountEmail');
		
		settingsDialogMessages = $('#settingsDialogMessages');
		settingsDialogMessages.hide();
		
		accountDialogMessages = $('#accountDialogMessages');
		accountDialogMessages.hide();
		
		changePasswordDialogMessages = $('#changePasswordDialogMessages');
		changePasswordDialogMessages.hide();

		menu = $('.menu');
		
		/* Starting menu configuration */
		menu.fixedMenu();
		
		/* Dialog configurations */
		changePasswordDialog.dialog({
			autoOpen: false,
			width: 'auto',
			height: 'auto',
			modal: true,
			buttons: {
				"Salvar": function() {
					Application.changePassword();
					Application.clearChangePasswordDialogFields();
				}, 
				"Cancelar": function() { 
					$(this).dialog("close");
					Application.clearChangePasswordDialogFields();
				} 
			}
		});
		
		accountDialog.dialog({
			autoOpen: false,
			width: 'auto',
			height: 'auto',
			modal: true,
			buttons: {
				"Salvar": function() {
					Application.updateAccountInfo();
					accountDialogMessages.empty();
					accountDialogMessages.hide();
				}, 
				"Cancelar": function() { 
					$(this).dialog("close");
					Application.clearAccountDialogFields();
				} 
			}
		});
		
		settingsDialog.dialog({
			autoOpen: false,
			width: 'auto',
			height: 'auto',
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
		
		/* Buttons configuration */
		changePasswordButton.button({
			icons : {
				primary : 'ui-icon-locked'
			},
			text : true
		});
		
		accountButton.button({
			icons : {
				primary : 'ui-icon-person'
			},
			text : true
		});

		settingsButton.button({
			icons : {
				primary : 'ui-icon-gear'
			},
			text : true
		});

		exitButton.button({
			icons : {
				primary : 'ui-icon-power'
			},
			text : true
		});
		
		/* Buttons Handlers */
		changePasswordButton.click(function(){
			changePasswordDialog.dialog('open');
			return false;
		});
		
		accountButton.click(function(){
			Application.loadAccountInfo();
			return false;
		});
		
		settingsButton.click(function(){
			settingsDialog.dialog('open');
			return false;
		});
		
		exitButton.click(function(){
			window.location = "/marketapp-be/j_logout";
		});
		
		/* hover effects in all JQuery UI buttons */
		$('.icon-button').hover(
			function() { $(this).addClass('ui-state-hover'); }, 
			function() { $(this).removeClass('ui-state-hover'); }
		);
	};
	
	/* Function that clears the change password dialog fields and messages */
	this.clearChangePasswordDialogFields = function() {
		newPasswordChangePasswordTextField.val('');
		confirmNewPasswordChangePasswordTextField.val('');
		changePasswordDialogMessages.empty();
		changePasswordDialogMessages.hide();
	};
	
	this.clearAccountDialogFields = function() {
		accountName.val('');
		accountEmail.val('');
		accountDialogMessages.empty();
		accountDialogMessages.hide();
	};
	
	/* Change Password Dialog of the Current account */
	this.changePassword = function() {
		$.update('/marketapp-be/resources/users/changepassword', 
				{
					username: usernameChangePasswordTextField.val().trim(), 
					newPassword: newPasswordChangePasswordTextField.val(), 
					confirmNewPassword: confirmNewPasswordChangePasswordTextField.val()
				}, function(response){
				
			if(response.status == 'success') {
				
				/* Open dialog to edit */
				changePasswordDialog.dialog('close');
				Application.runSuccessNotification(response.method, response.message);
			}
			else {
				changePasswordDialogMessages.append(Application.createErrorMessage(Application.splitMessages(response.message)));
				changePasswordDialogMessages.fadeIn();
				return false;
			}
		});
	};
	
	this.loadAccountInfo = function() {
		$.read('/marketapp-be/resources/users/load/' + accountUsername.val().trim(), function(response) {
			/* Get the common attributes in the JSON object */
			if(response.status == 'success') {
				/* Load data values */
				accountName.val(response.user.name);
				accountEmail.val(response.user.email);
				
				accountDialog.dialog('open');
			}
		});
	};
	
	this.updateAccountInfo = function() {
		$.update('/marketapp-be/resources/users/update', 
				{
					username: accountUsername.val().trim(), 
					name: accountName.val(), 
					email: accountEmail.val()
				}, function(response){
				
			if(response.status == 'success') {
				
				/* Open dialog to edit */
				accountDialog.dialog('close');
				Application.runSuccessNotification(response.method, response.message);
			}
			else {
				accountDialogMessages.append(Application.createErrorMessage(Application.splitMessages(response.message)));
				accountDialogMessages.fadeIn();
				return false;
			}
		});
	};
	
	this.createErrorMessage = function(message) {
		return '<div class="ui-state-error ui-corner-all" style="padding: 10px;">' +
					message +
				'</div>';
	};
	
	this.createHighlightMessage = function(message) {
		return '<div class="ui-state-highlight ui-corner-all" style="margin-top: 20px; padding: 10px;">' + 
					message +
				'</div>';
	};
	
	this.runZebraStyle = function() {
		/* Zebra code for all data tables */
		$('.datatable tr:even').addClass('data alternate-row');
		$('.datatable tr:odd').addClass('data');
		$('.datatable tr:first').removeClass('data alternate-row');
	};
	
	this.splitMessages = function(message) {
		var htmlMessage = '<ol class="error-messages-list">';
		
		$.each(message.split(':'), function(index, value){
			htmlMessage += '<li>' + value + '</li>';
		});
		
		return htmlMessage + '</ol>';
	};
	
	this.runSuccessNotification = function(method, message) {
		pageBody.showMessage({
			'thisMessage': ["[" + method + "] - " + message],
			'className': 'success ui-widget ui-corner-all',
			'opacity': 85,
			'displayNavigation': false,
			'autoClose': true,
			'delayTime': 6000
		});
	};
	
	this.runFailureNotification = function(method, message) {
		pageBody.showMessage({
			'thisMessage': ["[" + method + "] - " + message],
			'className': 'fail ui-widget ui-corner-all',
			'opacity': 85,
			'displayNavigation': false,
			'autoClose': true,
			'delayTime': 6000
		});
	};
	
	this.runInfoNotification = function(method, message) {
		pageBody.showMessage({
			'thisMessage': ["[" + method + "] - " + message],
			'className': 'notification ui-widget ui-corner-all',
			'opacity': 85,
			'displayNavigation': false,
			'autoClose': true,
			'delayTime': 6000
		});
	};
};