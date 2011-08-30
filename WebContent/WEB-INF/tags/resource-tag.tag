<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ attribute name="value" required="true" rtexprvalue="false" %>
<%@ attribute name="type" required="true" rtexprvalue="false" %>

<c:if test="${type == 'css'}">
	<link rel="stylesheet" href="<c:url value="/resources/" />${value}" type="text/css" />
</c:if>
<c:if test="${type == 'javascript'}">
	<script src="<c:url value="/resources/" />${value}" type="text/javascript"></script>
</c:if>