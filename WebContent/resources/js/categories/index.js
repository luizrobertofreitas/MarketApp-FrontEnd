$(document).ready(function(){
	
	var messageGreen = $('#message-green');
	var messageGreenLeft = $('#green-left');
	var messageGreenRight = $('#green-right');

	var messageRed = $('#message-red');
	var messageRedLeft = $('#red-left');
	var messageRedRight = $('#red-right');
	
	messageGreen.hide();
	messageGreenLeft.empty();
	messageGreenRight.empty();
	
	messageRed.hide();
	messageRedLeft.empty();
	messageRedRight.empty();
	
	$.read('/marketapp-be/resources/categories/list', function(response){
		
		/* Remove all the data rows */
		$('.data').remove();
		
		messageGreen.hide();
		messageGreenLeft.empty();
		messageGreenRight.empty();
		
		messageRed.hide();
		messageRedLeft.empty();
		messageRedRight.empty();
		
		/* Get the common attributes in the JSON object */
		if(response.status == 'success') {
			messageGreenLeft.append(response.message);
			messageGreenRight.append(response.method + ' - ' + response.status);
			messageGreen.fadeIn();
		}
		else {
			messageRedLeft.append(response.message);
			messageRedRight.append(response.method + ' - ' + response.status);
			messageRed.fadeIn();
		}
		
		//Iterate over the response object
		$.each(response.categories, function(index, obj) {
			var rowClass = '.data ';
			
			/* Zebra table color logic */
			if(obj.id%2 != 0) {
				rowClass += '.alternate-row';
			}
			
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
	
});
