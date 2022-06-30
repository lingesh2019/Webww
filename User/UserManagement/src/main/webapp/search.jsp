

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Display</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			  <div class="container text-right">

				<a href="list" class="btn btn-success"> Display List</a>
			</div>
				
					<form action="search" method="post">
                
				
                
				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				

				<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>