<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<tags:head title="Market Application - Front End - list Category" />
		<script type="text/javascript">
			$(function(){
				
				$('#clean').click(function(){
					$('#result').empty();
					$('#content').empty();
				});
				
				$('#cleancat').click(function(){
					$('#content').empty();
				});
				
				$('#load').click(function(){
					
					$.read('/marketapp-be/resources/categories/list', function(response){
						
						//Clean the result div
						$('#result').empty();
						
						//Get the common attributes in the JSON object
						$('#result').append('<p>Method: ' + response.method + '</p>');
						$('#result').append('<p>Status: ' + response.status + '</p>');
						$('#result').append('<p>Message: ' + response.message + '</p>');
						
						//Table
						$('#result').append('<table>');
						
						//Table header
						$('#result').append('<tr><th>ID</th><th>Name</th><th>Description<th/><tr/>');
						
						//Iterate over the response object
						$.each(response.categories, function(index, obj){
							$('#result').append('<tr><td><a class="category" id="' + obj.id + '" href="#">' + obj.id  + '</a></td><td>' + obj.name + '</td><td>' + obj.description + '<td/><tr/>');
						});
						
						$('#result').append('</table>');
					});
				});
				
				$('.category').click(function(){
					
					catId = $(this).id;
					
					$.read('/marketapp-be/resouces/categories/' + catId, function(response){
						$('#content').append('<p><strong>Method: </strong>' + response.method + '</p>');
						$('#content').append('<p><strong>Status: </strong>' + response.status + '</p>');
						$('#content').append('<p><strong>Message: </strong>' + response.message + '</p>');
						$('#content').append('<hr/>');
						//Iterate over the response object
						$.each(response.category, function(index, obj){
							$('#content').append('<p><strong>ID: </strong>' + obj.id + '</p>');
							$('#content').append('<p><strong>Name: </strong>' + obj.name + '</p>');
							$('#content').append('<p><strong>Description: </strong>' + obj.description + '</p>');
							$('#content').append('<p><a href="categories/edit.jsp?id='+ obj.id + '">Edit Category</a></p>');
						});
						$('#content').append('<p><a id="cleancat" href="#">Clean Category</a></p>');
					});
					
					
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
					<div align="center">
						<hr/>
						<br/>
						<p>Click in the <strong>Load</strong> link to load all categories and <strong>Clean</strong> to clean the table</p>
						<p><a id="load" href="#">Load</a> | <a id="clean" href="#">Clean</a></p>
						<br/>
						<div id="result"></div>
						<br/>
						<div id="content"></div>
						<p><a href="<c:url value="/categories/new.jsp" />">New Category</a></p>
						<hr/>
					</div>
				</div>
			</div>
			<tags:footer />
		</div>
	</body>
</html>