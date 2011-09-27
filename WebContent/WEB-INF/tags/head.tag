<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="/marketapp-fe/resources/images/m-20.png" rel="shortcut icon" type="image/x-icon"/>

<tags:resource-tag type="css" value="css/reset.css" />
<tags:resource-tag type="css" value="js/jquery-ui/css/start/jquery-ui-1.8.16.custom.css" />

<!-- JQuery core and JQuery UI -->
<tags:resource-tag type="javascript" value="js/jquery-ui/js/jquery-1.6.2.min.js" />
<tags:resource-tag type="javascript" value="js/jquery-ui/js/jquery-ui-1.8.16.custom.min.js" />

<!-- JQuery Menu -->
<tags:resource-tag type="css" value="js/menu/fixedMenu_style1.css" />
<tags:resource-tag type="javascript" value="js/menu/jquery.fixedMenu.js" />

<!-- JQuery REST plugin -->
<tags:resource-tag type="javascript" value="js/rest/jquery.rest.js" />

<!-- Application stylesheet -->
<tags:resource-tag type="css" value="css/style.css" />

<!-- JQuery notification bar -->
<tags:resource-tag type="javascript" value="js/jquery-notification/jquery.showMessage.min.js" />

<!-- JQuery input mask -->
<tags:resource-tag type="javascript" value="js/jquery-input-mask/jquery.maskedinput-1.3.min.js" />
<tags:resource-tag type="javascript" value="js/jquery-input-mask/jquery.maskMoney.js" />

<!-- Application scope JS library -->
<tags:resource-tag type="javascript" value="js/application/shared/app.js" />

<title>${title}</title>
