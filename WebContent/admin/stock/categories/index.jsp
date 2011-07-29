<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End - list Category" />
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
		
		<!-- Custom JQuery scripts -->
		<tags:javascript-tag src="custom_jquery.js" />
		
		<!-- JQuery REST javaScript library -->
		<tags:javascript-tag src="rest/jquery.rest.js" />
		
		<!-- Business logic javaScript -->
		<tags:javascript-tag src="categories/index.js" />
		
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
					<h1>Add product</h1>
				</div>
			
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
					<tr>
						<th rowspan="3" class="sized">
							<tags:image-tag src="shared/side_shadowleft.jpg" width="20" height="300" />
						</th>
						<th class="topleft"></th>
						<td id="tbl-border-top">&nbsp;</td>
						<th class="topright"></th>
						<th rowspan="3" class="sized">
							<tags:image-tag src="shared/side_shadowright.jpg" width="20" height="300" />
						</th>
					</tr>
					<tr>
						<td id="tbl-border-left"></td>
						<td>
							<div id="content-table-inner">						
								<div id="table-content">
									
									<div id="message-red">
										<table border="0" width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td class="red-left">
												</td>
												<td class="red-right">
													<a class="close-red">
														<tags:image-tag src="table/icon_close_red.gif" />
													</a>
												</td>
											</tr>
										</table>
									</div>
									
									<div id="message-green">
										<table border="0" width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td class="green-left">
												</td>
												<td class="green-right">
													<a class="close-green">
														<tags:image-tag src="table/icon_close_green.gif" />
													</a>
												</td>
											</tr>
										</table>
									</div>
							 
									<form id="mainform" action="">
										<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
											<tr>
												<th class="table-header-check"><a id="toggle-all" ></a> </th>
												<th class="table-header-repeat line-left minwidth-1"><a href="">ID</a>	</th>
												<th class="table-header-repeat line-left minwidth-1"><a href="">Nome</a></th>
												<th class="table-header-repeat line-left"><a href="">Descri&ccedil;&atilde;o</a></th>
												<th class="table-header-options line-left"><a href="">Options</a></th>
											</tr>											
										</table>
									</form>
								</div>
							
								<div id="actions-box">
									<a href="" class="action-slider"></a>
									<div id="actions-box-slider">
										<a href="#" id="reload-action" class="action-reload">Reload</a>
										<a href="" id="edit" class="action-edit">Edit</a>
										<a href="" id="delete" class="action-delete">Delete</a>
									</div>
									<div class="clear"></div>
								</div>
								
								<table border="0" cellpadding="0" cellspacing="0" id="paging-table">
									<tr>
										<td>
											<a href="" class="page-far-left"></a>
											<a href="" class="page-left"></a>
											<div id="page-info">Page <strong>1</strong> / 15</div>
											<a href="" class="page-right"></a>
											<a href="" class="page-far-right"></a>
										</td>
										<td>
										<select  class="styledselect_pages">
											<option value="">Number of rows</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
										</select>
										</td>
									</tr>
								</table>
								
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