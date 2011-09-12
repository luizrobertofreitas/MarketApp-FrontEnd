<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<div class="menu">
	<ul>
		<li>
			<a href="#"><fmt:message key="stock" /><span class="arrow"></span> </a>
			<ul>
				<li>
					<a href="<c:url value="/admin/stock/categories/manage.jsp" />"><fmt:message key="categories" /></a>
				</li>
				<li>
					<a href="<c:url value="/admin/stock/products/manage.jsp" />"><fmt:message key="products" /></a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#">Plugins<span class="arrow"></span> </a>
			<ul>
				<li>
					<a href="#">Galleries</a>
				</li>
				<li>
					<a href="#">DropDown Menus</a>
				</li>
				<li>
					<a href="#">Content Slider</a>
				</li>
				<li>
					<a href="#">LightBox</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#">Friend Sites<span class="arrow"></span> </a>
			<ul>
				<li>
					<a href="www.htmldrive.net">www.htmldrive.net</a>
				</li>
				<li>
					<a href="www.htmldrive.net">www.jquery.com</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#">Contact<span class="arrow"></span> </a>
			<ul>
				<li>
					<a href="http://www.twitter.com/htmldrive">Follow us on Twitter</a>
				</li>
				<li>
					<a href="#">Facebook</a>
				</li>
				<li>
					<a href="#">Rss</a>
				</li>
				<li>
					<a href="#">e-mail</a>
				</li>
			</ul>
		</li>
	</ul>
</div>