<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End - Edit Category" />
		<script type="text/javascript">
			$(document).ready(function(){
				
				$('#query').click(function(){
					
					$.read('/marketapp-be/resources/categories/{id}', {id: $('#queryid').val()}, function(response){
						
						$('#method').text(response.method);
						$('#status').text(response.status);
						$('#message').text(response.message);
						
						$('#id').val('');
						$('#name').val('');
						$('#description').val('');
						
						if(response.status != 'failure')
						{
							$('#id').val(response.category.id);
							$('#name').val(response.category.name);
							$('#description').val(response.category.description);
							
							$('#queryid').val('');
						}
						
					});
				});
				
				$('#submit').click(function(){
					
					$('#method').empty();
					$('#status').empty();
					$('#message').empty();
					
					$('#queryid').val('');
					
					$.update('/marketapp-be/resources/categories/update', {id: $('#id').val(), name: $('#name').val(), description: $('#description').val()}, function(response){
						
						$('#method').text(response.method);
						$('#status').text(response.status);
						$('#message').text(response.message);
						
						if(response.status != 'failure')
						{
							$('#id').val(response.category.id);
							$('#name').val(response.category.name);
							$('#description').val(response.category.description);
						}
					});
				});
				
				$('#delete').click(function(){
					
					$.destroy({url: '/marketapp-be/resources/categories/destroy/' + $('#id').val(), success: function(response){
						
						$('#method').text(response.method);
						$('#status').text(response.status);
						$('#message').text(response.message);
						
						$('#id').val('');
						$('#name').val('');
						$('#description').val('');
						
					}});
					
				});
			});
		</script>
	</head>
	<body>
		<div id="page-wrap">
			<tags:header />
			<tags:menu />
			<div id="main-content">
				<div id="feature-content">
					<div>
						<form action="#">
							<p>
								<strong>Fill the ID field above and click in the button to load the Category</strong>
							</p>
							<p>
								<input type="text" name="queryid" id="queryid" size="7" />
								<input type="button" id="query" value="Search" />
							</p>
							<p>
								<label for="id"><strong>ID: </strong></label><br/>
								<input type="text" name="id" id="id" readonly="readonly" size="7" />
							</p>
							<p>
								<label for="name"><strong>Name: </strong></label><br/>
								<input type="text" name="name" id="name" />
							</p>
							<p>
								<label for="description"><strong>Description: </strong></label><br/>
								<textarea name="description" id="description" rows="3" cols="60"></textarea>
							</p>
							<p>
								<input id="submit" type="button" value="Update" />
							</p>
						</form>
						
						<br />
						
						<div id="result">
							<p><strong>Method: </strong><span id="method"></span></p>
							<p><strong>Status: </strong><span id="status"></span></p>
							<p><strong>Message: </strong><span id="message"></span></p>
						</div>
						
						<br />
						
						<p><a id="delete" href="#">Delete Category</a></p>
						<p><a href="<c:url value="/categories/index.jsp" />">Categories</a></p>	
						
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<tags:footer />
		</div>
	</body>
</html>