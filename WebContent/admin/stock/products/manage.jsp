<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<tags:resource-tag type="javascript" value="js/application/products/manage.js" />
		
	</head>
	<body>
		<tags:common-dialogs />
		<div id="newCategoryDialog" title="Nova Categoria" class="dialog">
			<p class="validateTips">Todos os campos são obrigatórios.</p>
			<form id="form-data">
				<fieldset>
					<label for="name">Nome</label>
					<input type="text" name="name" id="name" class="required email text ui-widget-content ui-corner-all" />
					<label for="description">Descri&ccedil;&atilde;o</label>
					<textarea rows="4" cols="50" id="description" name="description" class="required text ui-widget-content ui-corner-all" ></textarea>
				</fieldset>
			</form>
		</div>
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />			
		</div>
		
		<tags:menu />
		
		<div id="content" class="content ui-widget">
			<h1>Categorias</h1>
				
			<table id="categories" class="ui-widget ui-widget-content display" cellspacing="2" cellpadding="2">
				<thead>
					<tr class="ui-widget-header ">
						<th>ID</th>
						<th>Nome</th>
						<th>Descri&ccedil;&atilde;o</th>
						<th>A&ccedil;&otilde;es</th>
					</tr>
			
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Porta de Correr</td>
						<td>Porta que corre pra lá e pra cá</td>
						<td><a href="#">Editar</a> <a href="#">Excluir</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>Fechaduras</td>
						<td>Fechaduras para Portas em Geral</td>
						<td><a href="#">Editar</a> <a href="#">Excluir</a></td>
					</tr>
				</tbody>
			</table>
			<div id="content-table-pagination" class="content-table-pagination" align="right">
				<a href="#">Anterior</a> <a href="#">1</a> <a href="#">Próximo</a>
			</div>
			<hr />
			<button id="newCategoryButton" class="ui-state-default ui-corner-all icon-button">
				Nova Categoria
			</button>
		</div>
		<tags:footer />
	</body>	
</html>