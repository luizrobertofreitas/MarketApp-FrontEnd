<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:dialog-tag title="change-password" id="changePasswordDialog" messagesAreaId="changePasswordDialogMessages">
	<tags:form-input-tag readonly="true" label="username" type="text" id="username" style="text" value="<tags:security-username />" size="30" />
	<tags:form-input-tag readonly="false" label="new-password" type="password" style="text" id="newPassword" size="30" />
	<tags:form-input-tag readonly="false" label="confirm-new-password" type="password" style="text" id="confirmNewPassword" size="30" />
</tags:dialog-tag>

<tags:dialog-tag title="my-account" id="accountDialog" messagesAreaId="accountDialogMessages">
	<tags:form-input-tag readonly="true" label="username" type="text" style="text" id="accountUsername" size="30" />
	<tags:form-input-tag readonly="false" label="name" type="text" style="text" id="accountName" size="45" />
	<tags:form-input-tag readonly="false" label="email" type="text" style="text" id="accountEmail" size="45" />
</tags:dialog-tag>

<tags:dialog-tag title="settings" id="settingsDialog" messagesAreaId="settingsDialogMessages">
	<p>Settings</p>
</tags:dialog-tag>