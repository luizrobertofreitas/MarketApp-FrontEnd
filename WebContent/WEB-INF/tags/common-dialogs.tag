<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<div id="changePasswordDialog" title='<fmt:message key="change-password" />' class="dialog">
	<div class="form-content">
		<form id="form-data">
			<fieldset>
				<label for="username"><fmt:message key="username" /></label>
				<input type="text" size="30" name="username" id="username" value='<tags:security-username />' class="text ui-widget-content ui-corner-all" readonly="readonly" />
				<label for="newPassword"><fmt:message key="new-password" /></label>
				<input type="password" size="30" name="newPassword" id="newPassword" class="text ui-widget-content ui-corner-all" />
				<label for="confirmNewPassword"><fmt:message key="confirm-new-password" /></label>
				<input type="password" size="30" name="confirmNewPassword" id="confirmNewPassword" class="text ui-widget-content ui-corner-all" />
			</fieldset>
		</form>
		<div id="changePasswordDialogMessages" class="ui-widget dialog-messages">
		</div>
	</div>
</div>

<div id="accountDialog" title='<fmt:message key="my-account" />' class="dialog">
	<div class="form-content">
		<form id="form-data">
			<fieldset>
				<label for="accountUsername"><fmt:message key="username" /></label>
				<input type="text" size="30" name="accountUsername" id="accountUsername"  value='<tags:security-username />' class="text ui-widget-content ui-corner-all" readonly="readonly" />
				<label for="accountName"><fmt:message key="name" /></label>
				<input type="text" size="45" name="accountName" id="accountName" class="text ui-widget-content ui-corner-all" />
				<label for="accountEmail"><fmt:message key="email" /></label>
				<input type="text" size="45" name="accountEmail" id="accountEmail" class="text ui-widget-content ui-corner-all" />
			</fieldset>
		</form>
		<div id="accountDialogMessages" class="ui-widget dialog-messages">
		</div>
	</div>
</div>

<div id="settingsDialog" title="Configurações" class="dialog">
	<div class="form-content">
		<form id="form-data">
			<fieldset>
				<label for="name">Name</label> <input type="text" size="30"
					name="name" id="name"
					class="required email text ui-widget-content ui-corner-all" /> <label
					for="description">Descri&ccedil;&atilde;o</label>
				<textarea rows="4" cols="50" id="description" name="description"
					class="required text ui-widget-content ui-corner-all"></textarea>
			</fieldset>
		</form>
		<div id="settingsDialogMessages" class="ui-widget dialog-messages">
		</div>
	</div>
</div>