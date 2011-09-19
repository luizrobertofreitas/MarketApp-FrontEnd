<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<tags:resource-tag type="css" value="js/jquery-table/yui/style.css" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter-2.0.3.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.filter.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.pager.js" />
		<tags:resource-tag type="javascript" value="js/application/products/manage.js" />
		<script type="text/javascript">
			$(document).ready(function(){
				$('#productTabs').tabs();
				
				$("#productsTable").tablesorter({ debug: false, sortList: [[0, 0]], widgets: ['zebra'] })
                	.tablesorterPager({ 	container: $("#pagerOne"), positionFixed: false })
                	.tablesorterFilter({ 	filterContainer: $("#filterBoxOne"),
                    						filterClearContainer: $("#filterClearOne"),
                    						filterColumns: [0, 1, 2],
                    						filterCaseSensitive: false
                });
			});
		</script>
	</head>
	<body>
		<tags:common-dialogs />
		<div id="newProductDialog" title="<fmt:message key="products.new" />" class="dialog">
			<p class="validateTips"><fmt:message key="all-fields-are-required" /></p>
			<form id="form-data">
				<fieldset>
						<label for="productId"><fmt:message key="id" /></label>
						<input type="text" name="productId" id="productId" size="10" class="text ui-widget-content ui-corner-all" readonly="readonly" />
						<label for="productName"><fmt:message key="name" /></label>
						<input type="text" name="productName" id="productName" size="35" class="text ui-widget-content ui-corner-all" />
						<label for="category"><fmt:message key="category" /></label>
						<select id="category" name="category" class="text ui-widget-content ui-corner-all">
							<option value="0">Portas</option>
							<option value="1">Batentes</option>
							<option value="2" selected="selected">Fechaduras</option>
						</select>
						<label for="productDescription"><fmt:message key="description" /></label>
						<textarea rows="4" cols="50" id="productDescription" name="productDescription" class="text ui-widget-content ui-corner-all" ></textarea>
						<label for="productQuantity"><fmt:message key="initial-quantity" /></label>
						<input type="text" id="productQuantity" name="productQuantity" size="10" class="text text-right-aligned ui-widget-content ui-corner-all" />
						<label for="productPrice"><fmt:message key="price" /></label>
						<input type="text" id="productPrice" name="productPrice" size="10" class="text text-right-aligned ui-widget-content ui-corner-all" />
						
				</fieldset>
			</form>
		</div>
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />
		</div>
		
		<tags:menu />
		
		<!-- <div id="content" class="content ui-widget"> -->
			<!-- <h1><fmt:message key="products" /></h1> -->
			
			<div id="productTabs" class="tabs-area">
				<ul>
					<li><a href="#tabs-1">Gerenciar</a></li>
					<li><a href="#tabs-2">Entrada</a></li>
					<li><a href="#tabs-3">Pedidos</a></li>
					<li><a href="#tabs-4">Compra</a></li>
				</ul>
				<div id="tabs-1">					
					<div id="content" class="content ui-widget">
						<div id="content-search" class="content-search">
							<input type="text" name="productName" id="productName" size="35" class="text ui-widget-content ui-corner-all" />
						</div>
						<table id="productsTable" class="ui-widget ui-widget-content display" cellspacing="2" cellpadding="2">
							<thead>
								<tr>
						            <td class="tableHeader">
						                Produtos
						            </td>
						            <td colspan="8" class="filter">
						                Buscar: <input id="filterBoxOne" value="" maxlength="30" size="30" type="text" />
						                <tags:image-tag id="filterClearOne" src="img/cross.png" title="Limpar o Filtro" alt="Limpar o Filtro" />
						            </td>
						        </tr>
								<tr class="ui-widget-header ">
									<th><a href="#" title="Clique para ordenar"><fmt:message key="id" /></a></th>
									<th><a href="#" title="Clique para ordenar"><fmt:message key="name" /></a></th>
									<th><a href="#" title="Clique para ordenar"><fmt:message key="category" /></a></th>
									<th><a href="#" title="Clique para ordenar"><fmt:message key="quantity" /></a></th>
									<th><a href="#" title="Clique para ordenar"><fmt:message key="price" /></a></th>
									<th><fmt:message key="options" /></th>
								</tr>
						
							</thead>
							<tbody>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">1</td>
									<td class="string">Porta de Correr</td>
									<td class="string">Portas</td>
									<td class="number">17</td>
									<td class="number">1,32</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
								<tr>
									<td class="codigo">2</td>
									<td class="string">Fechad. para Banheiro STAM</td>
									<td class="string">Fechaduras</td>
									<td class="number">31</td>
									<td class="number">24,99</td>
									<td class="options"><a href="#">Editar</a> <a href="#">Excluir</a></td>
								</tr>
							</tbody>
							<tfoot>
								<tr id="pagerOne">
							        <td colspan="7">
							        	<tags:image-tag src="img/first.png" class="first" />
							        	<tags:image-tag src="img/prev.png" class="prev" />
								        <input type="text" class="pagedisplay"/>
								        <tags:image-tag src="img/next.png" class="next" />
								        <tags:image-tag src="img/last.png" class="last" />
								        <select class="pagesize">
									        <option selected="selected"  value="10">10</option>
									        <option value="20">20</option>
									        <option value="30">30</option>
									        <option  value="40">40</option>
								        </select>
								    </td>
							    </tr>
							</tfoot>
						</table>
						<!-- 
						<div id="content-table-pagination" class="content-table-pagination" align="right">
							<a href="#">Anterior</a> <a href="#">1</a> <a href="#">Próximo</a>
						</div>
						-->
						<hr />
						<button id="newProductButton" class="ui-state-default ui-corner-all icon-button">
							<fmt:message key="products.new" />
						</button>
					</div>
				</div>
				<div id="tabs-2">
					Entrada
				</div>
				<div id="tabs-3">
					Pedidos
				</div>
				<div id="tabs-4">
					Compra
				</div>
			</div>
		<!-- </div> -->
		<tags:footer />
	</body>	
</html>