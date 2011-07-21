<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<div id="nav-right">
	<div class="nav-divider">&nbsp;</div>
	<div class="showhide-account">
		<tags:image-tag height="14" width="93" src="shared/nav/nav_myaccount.gif" alt="" />
	</div>
	<div class="nav-divider">&nbsp;</div>
	<a href="" id="logout">
		<tags:image-tag height="14" width="64" src="shared/nav/nav_logout.gif" alt="" />
	</a>
	<tags:clear />
				
	<div class="account-content">
		<div class="account-drop-inner">
			<a href="" id="acc-settings">Configurações</a>
			<tags:clear />
			<tags:acc-line />
			<a href="" id="acc-details">Informações</a>
			<tags:clear />
			<tags:acc-line />
			<a href="" id="acc-inbox">Mensagens</a>
		</div>
	</div>
</div>
