<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ attribute name="src" required="true" rtexprvalue="true" %>
<%@ attribute name="width" required="false" rtexprvalue="true" %>
<%@ attribute name="height" required="false" rtexprvalue="true" %>
<%@ attribute name="alt" required="false" rtexprvalue="false" %>
<%@ attribute name="title" required="false" rtexprvalue="false" %>
<%@ attribute name="class" required="false" rtexprvalue="false" %>
<%@ attribute name="id" required="false" rtexprvalue="false" %>

<img src="<c:url value="/resources/images/" />${src}" width="${width}" height="${height}" alt="${alt}" title="${title}" class="${class}" id="${id}" />
