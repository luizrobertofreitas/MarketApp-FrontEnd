<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%
	request.getSession().invalidate();
	request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
%>
