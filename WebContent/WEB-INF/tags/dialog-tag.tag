<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ attribute name="id" required="true" rtexprvalue="false"%>
<%@ attribute name="title" required="true" rtexprvalue="false"%>
<%@ attribute name="messagesAreaId" required="true" rtexprvalue="false"%>

<div id="${id}" title="<fmt:message key="${title}" />" class="form-content dialog">
	<form id="form-data">
		<fieldset>
			<jsp:doBody />
		</fieldset>
	</form>
	<div id="${messagesAreaId}" class="ui-widget dialog-messages"></div>
</div>