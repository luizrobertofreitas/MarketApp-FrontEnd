<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<!--
		<tags:resource-tag type="css" value="js/jquery-table/media/css/demo_table.css" />
		<tags:resource-tag type="javascript" value="js/jquery-table/media/js/jquery.dataTables.min.js" />
		-->
		<tags:resource-tag type="javascript" value="js/application/categories/manage.js" />
		
	</head>
	<body>
		<tags:common-dialogs />
		<div id="newCategoryDialog" title="<fmt:message key="categories" />" class="dialog">
			<p class="validateTips"><fmt:message key="all-fields-are-required" /></p>
			<form id="form-data">
				<fieldset>
					<label for="id"><fmt:message key="id" /></label>
					<input type="text" name="id" id="id" class="text ui-widget-content ui-corner-all" readonly="readonly" />
					<label for="name"><fmt:message key="name" /></label>
					<input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" />
					<label for="description"><fmt:message key="description" /></label>
					<textarea rows="4" cols="50" id="description" name="description" class="ui-widget-content ui-corner-all" ></textarea>
				</fieldset>
			</form>
			<div id="dialogMessages" class="ui-widget dialog-messages">
			</div>
		</div>
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />			
		</div>
		
		<tags:menu />
		
		<div id="content" class="content ui-widget">
			<h1><fmt:message key="categories" /></h1>
				
			<table id="categories" class="ui-widget ui-widget-content display datatable" cellspacing="2" cellpadding="2">
				<!-- 
				<thead>
				-->
					<tr class="ui-widget-header ">
						<th><fmt:message key="id" /></th>
						<th><fmt:message key="name" /></th>
						<th><fmt:message key="description" /></th>
						<th><fmt:message key="options" /></th>
					</tr>
				<!--
				</thead>
				<tbody>
				</tbody>
				-->
			</table>
			<div id="content-table-pagination" class="content-table-pagination" align="right">
				<a href="#"><fmt:message key="previous" /></a> <a href="#">1</a> <a href="#"><fmt:message key="next" /></a>
			</div>
			<div id="contentMessages" class="ui-widget">
			</div>
			<hr />
			<button id="newCategoryButton" class="ui-state-default ui-corner-all icon-button">
				<fmt:message key="categories.new" />
			</button>
		</div>
		<tags:footer />
	</body>	
</html>