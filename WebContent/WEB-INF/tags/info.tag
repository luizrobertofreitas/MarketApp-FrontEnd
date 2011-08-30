<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<div id="info-bar" class="ui-widget">
	Você entrou como <strong><%= request.getUserPrincipal().getName() %></strong> &nbsp; <a href="#" id="accountButton"
		class="ui-state-default ui-corner-all icon-button"> <span
		class="ui-icon ui-icon-key"></span> Minha conta </a> &nbsp; <a href="#" id="settingsButton"
		class="ui-state-default ui-corner-all icon-button"> <span
		class="ui-icon ui-icon-gear"></span> Configurações </a> &nbsp; <a href="#" id="logoutButton"
		class="ui-state-default ui-corner-all icon-button"> <span
		class="ui-icon ui-icon-power"></span> Logout </a>
</div>
