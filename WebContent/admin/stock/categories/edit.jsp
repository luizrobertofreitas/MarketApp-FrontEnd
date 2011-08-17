<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End - list Category" />

		<!--  checkbox styling script -->
		<tags:javascript-tag src="ui.core.js" />
		<tags:javascript-tag src="ui.checkbox.js" />
		<tags:javascript-tag src="jquery.bind.js" />
		<script type="text/javascript">
			$(function(){
				$('input').checkBox();
				$('#toggle-all').click(function(){
			 	$('#toggle-all').toggleClass('toggle-checked');
				$('#mainform input[type=checkbox]').checkBox('toggle');
				return false;
				});
			});
		</script>  

		<tags:javascript-tag src="jquery.selectbox-0.5.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
			});
		</script>
		 
		<!--  styled select box script version 2 --> 
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
				$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
			});
		</script>
		
		<!--  styled select box script version 3 --> 
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
			});
		</script>
		
		<!--  styled file upload script --> 
		<tags:javascript-tag src="jquery.filestyle.js" />
		<script type="text/javascript" charset="utf-8">
			$(function() {
				$("input.file_1").filestyle({ 
				image: "images/forms/upload_file.gif",
				imageheight : 29,
				imagewidth : 78,
				width : 300
				});
			});
		</script>
		
		<!-- Custom jquery scripts -->
		<script src="js/custom_jquery.js" type="text/javascript"></script>
		<tags:javascript-tag src="jquery.filestyle.js" />
		 
		<!-- Tooltips -->
		<tags:javascript-tag src="jquery.tooltip.js" />
		<tags:javascript-tag src="jquery.dimensions.js" />
		<script type="text/javascript">
			$(function() {
				$('a.info-tooltip ').tooltip({
					track: true,
					delay: 0,
					fixPNG: true, 
					showURL: false,
					showBody: " - ",
					top: -35,
					left: 5
				});
			});
		</script> 
		
		<!--  date picker script -->
		<tags:stylesheet-tag href="datePicker.css" />
		<tags:javascript-tag src="date.js" />
		<tags:javascript-tag src="jquery.datePicker.js" />
		<script type="text/javascript" charset="utf-8">
			$(function() {
		
			// initialise the "Select date" link
			// associate the link with a date picker
			$('#date-pick').datePicker({createButton:false, startDate:'01/01/2005', endDate:'31/12/2020'}).bind(
					// when the link is clicked display the date picker
					'click',
					function()
					{
						updateSelects($(this).dpGetSelected()[0]);
						$(this).dpDisplay();
						return false;
					}
				).bind(
					// when a date is selected update the SELECTs
					'dateSelected',
					function(e, selectedDate, $td, state)
					{
						updateSelects(selectedDate);
					}
				).bind(
					'dpClosed',
					function(e, selected)
					{
						updateSelects(selected[0]);
					}
				);
				
			var updateSelects = function (selectedDate)
			{
				var selectedDate = new Date(selectedDate);
				$('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
				$('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
				$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
			}
			// listen for when the selects are changed and update the picker
			$('#d, #m, #y')
				.bind(
					'change',
					function()
					{
						var d = new Date(
									$('#y').val(),
									$('#m').val()-1,
									$('#d').val()
								);
						$('#date-pick').dpSetSelected(d.asString());
					}
				);
			
			// default the position of the selects to today
			var today = new Date();
			updateSelects(today.getTime());
			
			// and update the datePicker to reflect it...
			$('#d').trigger('change');
			});
		</script>
		
		<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
		<tags:javascript-tag src="jquery.pngFix.pack.js" />
		<script type="text/javascript">
			$(document).ready(function(){
				$(document).pngFix( );
			});
		</script>
	</head>
	<body> 
		<div id="page-top-outer">		
			<tags:page-top />		
		</div>			
		<tags:clear />
		 
		<div class="nav-outer-repeat"> 
			<div class="nav-outer">			
				<tags:personal-menu-right />
				<tags:stock-menu />
			</div>
			<tags:clear />
		</div>
		
		<tags:clear />
		 
		<div id="content-outer">
			<div id="content">
				<div id="page-heading">
					<h1>Editar Categoria ${param['id']}</h1>
				</div>
				<div id="content-table-inner">
					<form>
						<p>
							<label for="nome">Nome:</label><br/>
							<input id="nome" type="text" class="input" />
						</p>
						<br/>
						<p>
							<label for="descricao">Descri&ccedil;&atilde;o:</label><br/>
							<textarea id="descricao" rows="4" cols="70" class="input"></textarea>
						</p>
						<br/>
						<p>
							<input type="button" value="Salvar" class="button" />
							<input type="reset" value="Limpar" class="button" />
						</p>
					</form>
				</div>
			</div>
		</div>
		<tags:footer />	 
	</body>	
</html>