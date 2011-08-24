<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="../resources/css/screen.css" type="text/css" media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->

<!--  jquery core -->
<script src="/resources/js/jquery-1.4.1.min.js" type="text/javascript"></script>

<!--  checkbox styling script -->
<script src="../resources/js/ui.core.js" type="text/javascript"></script>
<script src="../resources/js/ui.checkbox.js" type="text/javascript"></script>
<script src="../resources/js/jquery.bind.js" type="text/javascript"></script>
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

<!--  styled select box script version 1 -->
<script src="../resources/js/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
});
</script>

<!--  styled select box script version 2 --> 
<script src="../resources/js/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!--  styled select box script version 3 --> 
<script src="../resources/js/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<!--  styled file upload script --> 
<script src="../resources/js/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
  $(function() {
      $("input.file_1").filestyle({ 
          image: "images/forms/choose-file.gif",
          imageheight : 21,
          imagewidth : 78,
          width : 310
      });
  });
</script>

<!-- Custom jquery scripts -->
<script src="../resources/js/custom_jquery.js" type="text/javascript"></script>
 
<!-- Tooltips -->
<script src="../resources/js/jquery.tooltip.js" type="text/javascript"></script>
<script src="../resources/js/jquery.dimensions.js" type="text/javascript"></script>
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
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="../resources/js/date.js" type="text/javascript"></script>
<script src="../resources/js/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
        $(function()
{

// initialise the "Select date" link
$('#date-pick')
	.datePicker(
		// associate the link with a date picker
		{
			createButton:false,
			startDate:'01/01/2005',
			endDate:'31/12/2020'
		}
	).bind(
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
<script src="../resources/js/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
<!-- 
		<tags:head title="Market Application - Front End" />
		<tags:javascript-tag src="ui.core.js" />
		<tags:javascript-tag src="ui.checkbox.js" />
		<tags:javascript-tag src="jquery.bind.js" />
		
		<tags:javascript-tag src="jquery.selectbox-0.5.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
			});
		</script>
		
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
				$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
			});
		</script>
		
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
			});
		</script>
		
		<tags:javascript-tag src="custom_jquery.js" />
		 
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
		
		<tags:javascript-tag src="jquery.pngFix.pack.js" />
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(document).pngFix( );
			});
		</script>
		-->
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
			
				<!--  start page-heading -->
				<div id="page-heading">
					<h1>Bem vindo!</h1>
				</div>
				<!-- end page-heading -->
			
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
				<tr>
					<th rowspan="3" class="sized">
						<tags:image-tag height="300" width="20" alt="" src="shared/side_shadowleft.jpg" />
					</th>
					<th class="topleft"></th>
					<td id="tbl-border-top">&nbsp;</td>
					<th class="topright"></th>
					<th rowspan="3" class="sized">
						<tags:image-tag height="300" width="20" alt="" src="shared/side_shadowright.jpg" />
					</th>
				</tr>
				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<div id="content-table-inner">
							<div id="table-content">
								<h2>Sub Heading </h2>
								<h3>Local Heading</h3>
								
								Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet consectetur 
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet consectetur 
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  dolore magna aliqua. 
								<br />
							</div>
							
							<tags:clear />
						</div>
					</td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
				</table>
				<tags:clear />
			</div>
		<tags:clear />
		</div>
		
		<tags:clear />
		
		<tags:footer />
	</body>
</html>