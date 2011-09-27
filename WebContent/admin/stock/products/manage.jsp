<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End"></tags:head>
		<tags:resource-tag type="css" value="js/jquery-table/yui/style.css" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.filter.js" />
		<tags:resource-tag type="javascript" value="js/jquery-table/jquery.tablesorter.pager.js" />
		<tags:resource-tag type="javascript" value="js/application/products/manage.js" />
	</head>
	<body>
		<tags:common-dialogs />

		<tags:dialog-tag title="products.new" id="newProductDialog" messagesAreaId="productsMessagesDialog">
			<tags:form-input-tag type="text" readonly="true" style="number" id="productId" label="id" size="10" />
			<tags:form-input-tag type="text" readonly="false" style="text" id="productName" label="name" size="35" />
			<tags:form-select-tag label="category" id="category">
				<option value="0">Portas</option>
				<option value="1">Batentes</option>
				<option value="2" selected="selected">Fechaduras</option>
			</tags:form-select-tag>
			<tags:form-textarea-tag label="description" rows="4" cols="50" id="productDescription" />
			<tags:form-input-tag type="text" readonly="false" style="number" id="productQuantity" label="initial-quantity" size="10" />
			<tags:form-input-tag type="text" readonly="false" style="money" id="productPrice" label="price" size="10" />
		</tags:dialog-tag>
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />
		</div>
		
		<tags:menu />
		
			<div id="productTabs" class="tabs-area">
				<ul>
					<li><a href="#tabs-1">Gerenciar</a></li>
					<li><a href="#tabs-2">Entrada</a></li>
					<li><a href="#tabs-3">Pedidos</a></li>
					<li><a href="#tabs-4">Compra</a></li>
				</ul>
				<div id="tabs-1">					
					<div id="content" class="content ui-widget">
						<tags:table-tag searchFieldEnable="true" id="productsTable">
							<th><a href="#"><fmt:message key="id" /></a></th>
							<th><a href="#"><fmt:message key="name" /></a></th>
							<th><a href="#"><fmt:message key="category" /></a></th>
							<th><a href="#"><fmt:message key="quantity" /></a></th>
							<th><a href="#"><fmt:message key="price" /></a></th>
							<th><fmt:message key="options" /></th>
						</tags:table-tag>
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
		<tags:footer />
	</body>	
</html>