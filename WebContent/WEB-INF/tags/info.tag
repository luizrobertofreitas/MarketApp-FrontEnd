<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<div id="page-info" align="right" class="page-top-info">
	<fmt:message key="you-logged-in-as" /> <strong><tags:security-username /></strong>&nbsp;
	<button id="changePasswordButton"><fmt:message key="change-password" /></button>
	<button id="accountButton"><fmt:message key="my-account" /></button>
	<button id="settingsButton"><fmt:message key="settings" /></button>
	<button id="exitButton"><fmt:message key="exit" /></button>
</div>
<div id="page-menu" class="page-menu">
	<h1><fmt:message key="marketapplication" /></h1>
</div>