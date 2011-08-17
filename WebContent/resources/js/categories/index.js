/* On ready */
$(document).ready(function() {
	Categories.loadAll();
	
	/* Reload link Object */
	$('#reload').click(function(){
		Categories.loadAll();
	});
});

/* Categories singleton class */
var Categories = new function() {
	
	/* Cleaning all elements */
	this.clear = function(){
		$('#message-green').hide();
		$('.green-left').empty();
		
		$('#message-red').hide();
		$('.red-left').empty();
		
		/* Remove all the data rows */
		$('.data').remove();
	};
	
	/* Edit category function */
	this.edit = function(id) {
		$.read('/marketapp-be/resources/categories/' + id.substring(1, id.length), function(response){
			var statesdemo = {
				state0: {
					html: 'test 1 <br/> test1 <br/>' + response.method,
					buttons: {Cancel: false, Next: true},
					focus: 1,
					submit: function(v, m, f) {
						if(!v) {
							return true;
						}
						else {
							$.prompt.goToState('state1');							
						}
						return false;
					}
				},
				state1: {
					html: 'test 2 <br/> test 2 <br/>' + response.message,
					buttons: {Back: -1, Exit: 0},
					focus: 1,
					submit: function(v, m, f) {
						if (v == 0) {
							$.prompt.close();
						}
						else if (v == -1) {
							$.prompt.goToState('state0');
						}
						return false;
					}
				}
			};
			
			$.prompt(statesdemo);
		});
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
	
	this.loadById = function(id){
		
	};
	
	/* This function loads all categories */
	this.loadAll = function(){
		$.read('/marketapp-be/resources/categories/list', function(response){
			Categories.loadFromResponse(response);
		});
	};
	
	this.loadFromResponse = function(response) {
		
		/* Cleaning all messages and data */
		Categories.clear();
		
		/* Get the common attributes in the JSON object */
		if(response.status == 'success') {
			$('.green-left').append('[' + response.method + '] [' + response.status + '] - ' + response.message);
			$('#message-green').fadeIn();
		}
		else {
			$('.red-left').append('[' + response.method + '] [' + response.status + '] - ' + response.message);
			$('#message-red').fadeIn();
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