/* On ready */
$(document).ready(function() {
	Categories.loadAll();
	
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
	
	/* This function loads all categories */
	this.loadAll = function(){

		$.read('/marketapp-be/resources/categories/list', function(response){
			
			/* Cleaning all messages and data */
			Categories.clear();
			
			$('#message-green').hide();
			$('.green-left').empty();
			
			$('#message-red').hide();
			$('.red-left').empty();
			
			/* Get the common attributes in the JSON object */
			if(response.status == 'success') {
				$('.green-left').append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				$('#message-green').fadeIn();
			}
			else {
				$('.red-left').append('[' + response.method + '] [' + response.status + '] - ' + response.message);
				$('#message-red').fadeIn();
			}
			
			/* Counter to staff the zebra logic */
			var counter = 1;
			
			/* Iterate over the response object */
			$.each(response.categories, function(index, obj) {
				var rowClass = 'data ';
				
				/* Zebra table color logic */
				if(counter%2 != 0) {
					rowClass += 'alternate-row';
				}
				
				counter++;
				
				var inputCheckbox = '<td><input  type="checkbox"/></td>';
				var idTd = '<td><a class="category" id="' + obj.id + '" href="#">' + obj.id + '</a></td>';
				var nomeTd = '<td>' + obj.name + '</td>';
				var descricaoTd = '<td>' + obj.description + '</td>';
				var optionsTd = '<td class="options-width">' + 
									'<a href="" title="Edit" class="icon-1 info-tooltip"></a>' +
									'<a href="" title="Edit" class="icon-2 info-tooltip"></a>' +
									'<a href="" title="Edit" class="icon-3 info-tooltip"></a>' +
									'<a href="" title="Edit" class="icon-4 info-tooltip"></a>' +
									'<a href="" title="Edit" class="icon-5 info-tooltip"></a>' +
								'</td>';

				var newTr = '<tr class="' + rowClass + '">' + inputCheckbox + idTd + nomeTd + descricaoTd + optionsTd + '</tr>';
				
				$('#product-table tr:last').after(newTr);
			});
		});
	};
};