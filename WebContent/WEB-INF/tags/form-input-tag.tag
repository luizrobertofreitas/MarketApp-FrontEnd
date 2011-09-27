<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ attribute name="id" required="true" rtexprvalue="false"%>
<%@ attribute name="readonly" required="true" rtexprvalue="true"%>
<%@ attribute name="label" required="true" rtexprvalue="true"%>
<%@ attribute name="type" required="true" rtexprvalue="true"%>
<%@ attribute name="style" required="true" rtexprvalue="true"%>
<%@ attribute name="size" required="false" rtexprvalue="false"%>
<%@ attribute name="value" required="false" rtexprvalue="true"%>

<label for="${id}"><fmt:message key="${label}" /></label>
<c:choose>
	<c:when test="${readonly == true}">
		<input type="${type}" name="${id}" id="${id}" value="${value}" size="${size}" class="${style} ui-widget-content ui-corner-all" readonly="readonly" />
	</c:when>
	<c:otherwise>
		<input type="${type}" name="${id}" id="${id}" value="${value}" size="${size}" class="${style} ui-widget-content ui-corner-all" />
	</c:otherwise>
</c:choose>
