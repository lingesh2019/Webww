

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
	<%
	
	if(session.getAttribute("username") ==null)
	{
		
		response.sendRedirect("login.jsp");
	}
	
	%>
	<h3>Welcome ${username }</h3> 
	
	<form action="Logout">
	
	<input type="submit" value="Logout"  class="btn btn-danger">
	
	</form>
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			  <div class="container text-right">

				<a href="list" class="btn btn-success"> Display List</a>
			</div>
				
					<form action="update" method="post">
              
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}'/>" />
				</c:if>
               
				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Country</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-primary">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>