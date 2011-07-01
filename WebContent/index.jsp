<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.catalina.User,com.marketappfe.entity.UserApp" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%
	User user = new UserApp();
	user.setUsername("Administrator");
	user.setFullName("Administrator");
	user.setPassword("123456");
	session.setAttribute("user", user);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
	</head>
	<body>
		<div id="page-wrap">
			<tags:header />
			<tags:menu />
			<div id="main-content">
				<div id="feature-content">
					<div align="center">
						
						<p><a href="<c:url value="categories/index.jsp" />">Categories</a></p>
						
					</div>					
					<div class="clear"></div>
				</div>
			</div>
			<tags:footer />
		</div>
	</body>
</html>