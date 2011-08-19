/* On ready */
$(document).ready(function() {
	Categories.init();
});

/* Categories singleton class */
var Categories = new function() {
	
	var messageOk = null;
	var messageOkLeft = null;
	var messageError = null;
	var messageErrorLeft = null;
	
	var reloadLink = null;
	
	/* Initiator method */
	this.init = function() {
		messageOk = $('#message-green');
		messageOkLeft = $('.green-left');
		messageError = $('#message-red');
		messageErrorLeft = $('.red-left');
		
		reloadLink = $('#reload');
		
		/* Reload link Object */
		reloadLink.click(function(){
			Categories.loadAll();
		});
		
		Categories.loadAll();
	};
	
	/* Cleaning all elements */
	this.clear = function(){
		messageOk.hide();
		messageOkLeft.empty();
		
		messageError.hide();
		messageErrorLeft.empty();
		
		/* Remove all the data rows */
		$('.data').remove();
	};
	
	/* Destroy category function */
	this.destroy = function(id) {
		if(confirm('Deseja excluir o registro selecionado?')) {
			$.destroy({
				url: '/marketapp-be/resources/categories/destroy/' + id.substring(1, id.length),
				success: function(response) {
					/* The JSON object already comes with all categories */
					Categories.loadFromResponse(response);
				}
			});
		}
	};
	
	/* This function loads all categories */
	this.loadAll = function(){
		$.read('/marketapp-be/resources/categories/list', function(response) {
			Categories.loadFromResponse(response);
		});
	};
	
	this.loadFromResponse = function(response) {
		
		/* Cleaning all messages and data */
		Categories.clear();
		
		/* Get the common attributes in the JSON object */
		if(response.status == 'success') {
			messageOkLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
			messageOk.fadeIn();
		}
		else {
			messageErrorLeft.append('[' + response.method + '] [' + response.status + '] - ' + response.message);
			messageError.fadeIn();
		}
		
		/* Iterate over the response object */
		$.each(response.categories, function(index, obj) {			
			var idTd = '<td><a class="category" id="' + obj.id + '" href="#">' + obj.id + '</a></td>';
			var nomeTd = '<td>' + obj.name + '</td>';
			var descricaoTd = '<td>' + obj.description + '</td>';
			var optionsTd = '<td class="options-width" align="center">' + 
							'<a href="/marketapp-fe/admin/stock/categories/edit.jsp?id=' + obj.id + '" id="d' + obj.id + '" title="Excluir" class="info-tooltip">Editar</a> | ' +	
							'<a href="#" id="e' + obj.id + '" onclick="Categories.destroy(this.id);" title="Editar" class="info-tooltip">Excluir</a>' +
							'</td>';

			var newTr = '<tr>' + idTd + nomeTd + descricaoTd + optionsTd + '</tr>';
			
			$('#table tr:last').after(newTr);
		});
		
		/* Zebra code */
		$('#table tr:even').addClass('data alternate-row');
		$('#table tr:odd').addClass('data');
		$('#table tr:first').removeClass('data');
	};
};