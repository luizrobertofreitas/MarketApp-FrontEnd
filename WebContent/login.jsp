<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		
		<script type="text/javascript">
			$(document).ready(function(){
				$('#loginSubmit').button();
			});
		</script>
	</head>
	<body>
		<div id="login-box" align="center">
			<div id="login-form" class="login-form-div div-corner-shadow ui-widget ui-corner-all" title="Log in" align="left">
				<div id="title" class="login-form-div-header ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><fmt:message key="login.title" /></div>
				<div id="login-form-content" class="form-content">
					<form action="j_security_check" method="post">
						<label for="j_username"><fmt:message key="username" />:</label><br/>
						<input type="text" id="j_username" name="j_username" size="35" class="required email text ui-widget-content ui-corner-all" />
						<label for="j_password"><fmt:message key="password" />:</label><br/>
						<input type="password" id="j_password" name="j_password" size="10" class="required email text ui-widget-content ui-corner-all" />
						<input id="loginSubmit" type="submit" value="<fmt:message key="login.button" />" class="ui-button-text" />
					</form>
				</div>
			</div>
		</div>
	</body>
</html>