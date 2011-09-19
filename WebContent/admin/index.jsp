<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<!--
		<tags:resource-tag type="css" value="js/jquery-table/media/css/demo_table.css" />
		<tags:resource-tag type="javascript" value="js/jquery-table/media/js/jquery.dataTables.min.js" />
		-->
		<tags:resource-tag type="javascript" value="js/application/categories/manage.js" />
		
	</head>
	<body>
		<tags:common-dialogs />
		
		<div id="page-top" class="ui-widget ui-widget-header page-top">
			<tags:info />			
		</div>
		
		<tags:menu />
		
		<div id="content" class="content ui-widget">
			
		</div>
		<tags:footer />
	</body>	
</html>