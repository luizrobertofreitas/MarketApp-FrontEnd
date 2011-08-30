<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		
		<!-- Business logic javaScript -->
		<tags:resource-tag type="javascript" value="js/categories/index.js" />
		
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
								<th><a href="">A&ccedil;&otilde;es</a></th>
							</tr>											
						</table>
					</div>
					<a href="<c:url value="/admin/stock/categories/manage.jsp"/>">Nova Categoria</a>
				</div>
			</div>
		</div>
		<tags:footer />	 
	</body>	
</html>