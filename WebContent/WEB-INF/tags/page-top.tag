<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<div id="logo">
	<a href="#">
		<tags:image-tag height="40" width="156" alt="" src="shared/logo.png" />
	</a>
</div>
<div id="top-search">
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<p>
					Bem vindo, <span id="user_fullname">${pageContext['request'].userPrincipal}</span>!
				</p>
			</td>				
		</tr>
	</table>
	<tags:clear />
</div>
