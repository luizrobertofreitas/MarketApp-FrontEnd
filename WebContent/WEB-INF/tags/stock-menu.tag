<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<div class="nav">
	<div class="table">
		<ul class="current">
			<li>
				<a href="#nogo"><b>Categorias de Produtos</b></a>
				<div class="select_sub show">
					<ul class="sub">
						<li class="sub_show"><a href='<c:url value="/admin/stock/categories" />'>Consultar</a></li>
						<li><a href='<c:url value="/admin/stock/categories/manage.jsp" />'>Adicionar</a></li>
					</ul>
				</div>
			</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
	
		<ul class="select">
			<li>
				<a href="#nogo"><b>Dashboard</b></a>
				<div class="select_sub">
					<ul class="sub">
						<li><a href="#nogo">Dashboard Details 1</a></li>
						<li><a href="#nogo">Dashboard Details 2</a></li>
						<li><a href="#nogo">Dashboard Details 3</a></li>
					</ul>
				</div>
			</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select">
			<li>
				<a href="#nogo"><b>Produtos</b></a>
				<div class="select_sub">
					<ul class="sub">
						<li><a href="#nogo">Adicionar</a></li>
						<li><a href="#nogo">Consultar</a></li>
					</ul>
				</div>
			</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select">
			<li>
				<a href="#nogo"><b>Clients</b></a>
				<div class="select_sub">
					<ul class="sub">
						<li><a href="#nogo">Clients Details 1</a></li>
						<li><a href="#nogo">Clients Details 2</a></li>
						<li><a href="#nogo">Clients Details 3</a></li>
				
					</ul>
				</div>
			</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select">
			<li>
				<a href="#nogo"><b>News</b></a>
				<div class="select_sub">
					<ul class="sub">
						<li><a href="#nogo">News details 1</a></li>
						<li><a href="#nogo">News details 2</a></li>
						<li><a href="#nogo">News details 3</a></li>
					</ul>
				</div>
			</li>
		</ul>		
		<tags:clear />
	</div>
	<tags:clear />
</div>
