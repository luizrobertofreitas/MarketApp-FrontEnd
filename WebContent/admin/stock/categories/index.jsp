<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<tags:stylesheet-tag href="screen.css" />
		
		<!--  jquery core -->
		<tags:javascript-tag src="jquery-1.4.1.min.js" />
		
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
		
		<!--  styled select box script version 1 -->
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
		
		<!-- JQuery REST javaScript library -->
		<tags:javascript-tag src="rest/jquery.rest.js" />
		
		<!-- Business logic javaScript -->
		<tags:javascript-tag src="categories/index.js" />
		
		<!-- Custom JQuery scripts -->
		<!-- <tags:javascript-tag src="custom_jquery.js" /> -->
		
		<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
		<tags:javascript-tag src="jquery.pngFix.pack.js" />
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
					<h1>Lista de Categorias de Produtos</h1>
				</div>
			
				<div id="content-table-inner">						
					<div id="message-red">
						<div align="left" class="red-left">
							
						</div>
						<div align="right" class="red-right">
							<a class="close-red">Fechar</a>
						</div>						
					</div>
					<div id="message-green">
						<div align="left" class="green-left">
							
						</div>
						<div align="right" class="green-right">
							<a class="close-green">Fechar</a>
						</div>
					</div>
					<div align="center" id="crud-content">
						<table border="0" width="100%" cellpadding="0" cellspacing="0" id="table">
							<tr>
								<th><a href="">ID</a>	</th>
								<th><a href="">Nome</a></th>
								<th><a href="">Descri&ccedil;&atilde;o</a></th>
								<th><a href="">Options</a></th>
							</tr>											
						</table>
					</div>
					<a href="<c:url value="/admin/stock/categories/edit.jsp"/>">Nova Categoria</a>
				</div>
			</div>
		</div>
		<tags:footer />	 
	</body>	
</html>