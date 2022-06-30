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
   <div> 
    <form action="Login">
    
    <fieldset class="form-group">
					<label>Name</label> <input type="text"
						 class="form-control"
						name="username" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						 class="form-control"
						name="password">
				</fieldset>
    
       <button type="submit" class="btn btn-primary">Login</button>
    </form>
   </div> 
</body>
</html>