<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ attribute name="src" required="true" rtexprvalue="true" %>
<%@ attribute name="width" required="false" rtexprvalue="true" %>
<%@ attribute name="height" required="false" rtexprvalue="true" %>
<%@ attribute name="alt" required="false" rtexprvalue="true" %>

<img src="<c:url value="/resources/images/" />${src}" width="${width}" height="${height}" alt="${alt}" />
