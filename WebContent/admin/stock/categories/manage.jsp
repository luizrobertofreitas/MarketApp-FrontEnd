<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<!-- 
		<tags:resource-tag type="css" value="js/jquery-table/yui/style.css" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.filter.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.pager.js" />
		-->
		<tags:resource-tag type="css" value="js/jquery-datatable/media/css/demo_table.css" />
		<tags:resource-tag type="css" value="js/jquery-datatable/media/css/demo_table_jui.css" />
		<tags:resource-tag type="javascript" value="js/jquery-datatable/media/js/jquery.dataTables.js" />
		
		<tags:resource-tag type="javascript" value="js/application/categories/manage.js" />
		
		<script type="text/javascript">
			
		</script>
		
	</head>
	<body>
		<tags:common-dialogs />
		
		<tags:dialog-tag messagesAreaId="dialogMessages" title="categories.new" id="newCategoryDialog">
			<tags:form-input-tag readonly="true" label="id" style="text" type="text" id="id" />
			<tags:form-input-tag readonly="false" label="name" style="text" type="text" id="name" />
			<tags:form-textarea-tag label="description" rows="4" cols="50" id="description" />
		</tags:dialog-tag>
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />			
		</div>
		
		<tags:menu />
		
		<div id="content" class="content ui-widget">
			<table class="display" id="categoriesTable">
				<thead>
					<tr>
						<th>Código</th>
						<th>Nome</th>
						<th>Descrição</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<div id="buttons-area" class="buttons-area">
				<button id="newCategoryButton" class="ui-state-default ui-corner-all icon-button">
					<fmt:message key="new" />
				</button>
				<button id="editCategoryButton" class="ui-state-default ui-corner-all icon-button">
					<fmt:message key="edit" />
				</button>
				<button id="removeCategoryButton" class="ui-state-default ui-corner-all icon-button">
					<fmt:message key="remove" />
				</button>
				<button id="refreshCategoryButton" class="ui-state-default ui-corner-all icon-button">
					<fmt:message key="reload" />
				</button>
			</div>
		</div>
		<tags:footer />
	</body>	
</html>