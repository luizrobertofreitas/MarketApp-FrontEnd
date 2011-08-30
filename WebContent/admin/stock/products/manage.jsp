<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<tags:resource-tag type="javascript" value="js/application/products/manage.js" />
	</head>
	<body>
		<tags:common-dialogs />
		<div id="newCategoryDialog" title="Nova Categoria" class="dialog">
			<div class="form-content">
				<form id="form-data">
					<fieldset>
						<label for="name">Name</label>
						<input type="text" size="30" name="name" id="name" class="required email text ui-widget-content ui-corner-all" />
						<label for="description">Descri&ccedil;&atilde;o</label>		
						<textarea rows="4" cols="50" id="description" name="description" class="required text ui-widget-content ui-corner-all" ></textarea>
					</fieldset>
				</form>
			</div>			
		</div>
		
		<div id="page-top" class="ui-dialog-titlebar ui-widget-header ui-helper-clearfix">
			<tags:info />
			<tags:menu />
		</div>
		
		<div id="crud-content" class="ui-widget div-corner-shadow">
			<h1>Categorias</h1>
				
			<table id="categories" class="ui-widget ui-widget-content">
				<thead>
					<tr class="ui-widget-header ">
						<th>ID</th>
						<th>Nome</th>
						<th>Descri&ccedil;&atilde;o</th>
						<th>A&ccedil;&otilde;es</th>
					</tr>
			
				</thead>
				<tbody>
					<tr class="data">
						<td>1</td>
						<td>Portas</td>
						<td>Portas de todos os tipos</td>
						<td>
							Test
						</td>
					</tr>
					
				</tbody>
			</table>
			<a id="newCategoryButton" href="#" class="ui-state-default ui-corner-all icon-button">
				<span class="ui-icon ui-icon-circle-plus"></span>
				Nova Categoria
			</a>
		</div>
		<tags:footer />
	</body>	
</html>