<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<tags:resource-tag type="css" value="css/reset.css" />
<tags:resource-tag type="css" value="js/jquery-ui/css/smoothness/jquery-ui-1.8.16.custom.css" />

<!-- JQuery Menu -->
<tags:resource-tag type="css" value="js/jquery-menu/menu.css" />
<tags:resource-tag type="javascript" value="js/jquery-menu/menu.js" />

<!-- JQuery core and JQuery UI -->
<tags:resource-tag type="javascript" value="js/jquery-ui/js/jquery-1.6.2.min.js" />
<tags:resource-tag type="javascript" value="js/jquery-ui/js/jquery-ui-1.8.16.custom.min.js" />

<!-- JQuery REST plugin -->
<tags:resource-tag type="javascript" value="js/rest/jquery.rest.js" />

<!-- Application stylesheet -->
<tags:resource-tag type="css" value="css/style.css" />

<!-- Application scope JS library -->
<tags:resource-tag type="javascript" value="js/application/shared/app.js" />

<title>${title}</title>
