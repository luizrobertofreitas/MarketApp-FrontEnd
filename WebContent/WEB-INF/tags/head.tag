<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.4.4.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.rest.js" />"></script>
<script type="text/javascript">
		$(document).ready(function(){
		   $("#zone-bar li em").click(function() {
		   		var hidden = $(this).parents("li").children("ul").is(":hidden");
		   		
				$("#zone-bar>ul>li>ul").hide()        
			   	$("#zone-bar>ul>li>a").removeClass();
			   		
			   	if (hidden) {
			   		$(this)
				   		.parents("li").children("ul").toggle()
				   		.parents("li").children("a").addClass("zoneCur");
				   	} 
			   });
		});
</script>
<title>${title}</title>
