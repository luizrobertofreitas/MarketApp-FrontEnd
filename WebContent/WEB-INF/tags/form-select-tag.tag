<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ attribute name="id" required="true" rtexprvalue="false"%>
<%@ attribute name="label" required="true" rtexprvalue="false"%>

<label for="${id}">
	<fmt:message key="${label}" />
</label>
<select id="${id}" name="${id}" class="text ui-widget-content ui-corner-all">
	<jsp:doBody />
</select>