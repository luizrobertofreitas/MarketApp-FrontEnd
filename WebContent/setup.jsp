<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End" />
		<tags:javascript-tag src="ui.core.js" />
		<tags:javascript-tag src="ui.checkbox.js" />
		<tags:javascript-tag src="jquery.bind.js" />
		
		<tags:javascript-tag src="jquery.selectbox-0.5.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
			});
		</script>
		
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
				$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
			});
		</script>
		
		<tags:javascript-tag src="jquery.selectbox-0.5_style_2.js" />
		<script type="text/javascript">
			$(document).ready(function() {
				$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
			});
		</script>
		
		<tags:javascript-tag src="custom_jquery.js" />
		 
		<tags:javascript-tag src="jquery.tooltip.js" />
		<tags:javascript-tag src="jquery.dimensions.js" />
		<script type="text/javascript">
			$(function() {
				$('a.info-tooltip ').tooltip({
					track: true,
					delay: 0,
					fixPNG: true, 
					showURL: false,
					showBody: " - ",
					top: -35,
					left: 5
				});
			});
		</script>
		
		<tags:javascript-tag src="rest/jquery.rest.js" />
		<tags:javascript-tag src="setup/setup.js" />
		
		<tags:javascript-tag src="jquery.pngFix.pack.js" />
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(document).pngFix( );
			});
		</script>
	</head>
	<body>
		<div id="page-top-outer">    
			<tags:page-top />
		</div>
		<tags:clear />
		
		<div class="setup-bar"> 
		</div>
		
		<tags:clear />
		 
		<div id="content-outer">
			<div id="content">
			
				<div id="page-heading">
					<h1><fmt:message key="welcome" /></h1>
				</div>
			
				<div id="content-table-inner">
					<h2>
						<fmt:message key="setup.message" />
					</h2>
					<br/><br/>
					<div id="crud-content">
						<fieldset>
							<form>
								<p>
									<label for="code"><fmt:message key="setup.code" />:&nbsp;</label>
									<input id="code" type="text" class="input" size="40" />
								</p>
								<p>
									<input id="submit" type="button" value="<fmt:message key="setup.create" />" class="button" />
								</p>
							</form>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
		<tags:footer />
	</body>
</html>