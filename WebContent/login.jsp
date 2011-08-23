<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<tags:javascript-tag src="jquery.pngFix.pack.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$(document).pngFix();
			});
		</script>
	</head>
	<body id="login-bg">

		<div id="login-holder">
		
			<tags:logo />
			<tags:clear />
			
			<div id="loginbox">
				<div id="login-inner">
					<form method="POST" action="j_security_check">
						<p>
							<label for="j_username"><fmt:message key="login.username" /></label><br/>
							<input id="j_username" name="j_username" type="text" class="input" size="35" />
						</p>
						<br/>
						<p>
							<label for="j_password"><fmt:message key="login.password" /></label><br/>
							<input id="j_password" name="j_password" type="password" value="************" onfocus="this.value=''" class="input" />
						</p>
						<br/>
						<p>
							<input type="submit" value="<fmt:message key="login.button" />" class="button" />
						</p>
					</form>
				</div>

				<tags:clear />
			</div>			
		</div>		
	</body>
</html>