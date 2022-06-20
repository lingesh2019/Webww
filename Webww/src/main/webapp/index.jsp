<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Customer</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<div class="row "align="right">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 align="center">Customer List</h2><p>&nbsp;&nbsp;<br></p></br>
	<form method="get" action="search"> &nbsp;&nbsp;
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" /> &nbsp;&nbsp;
	</form>
					<a href="new" class="btn btn-info"> Add New</a> &nbsp;&nbsp;&nbsp;
	
					<a href="list" class="btn btn-success"> Display List</a> &nbsp;&nbsp;&nbsp;
	
					<a href="deleteall" class="btn btn-danger"> Delete All</a> &nbsp;&nbsp;&nbsp;
	
			<table class="table table-bordered">
		<tr>
			<th align="right">ID</th> 
			<th width="20%">Name</th>
			<th width="25%">E-mail</th>
			<th width="20%">Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listCustomer}" var="customer">
		<tr>
			<td align="right">${customer.id}</td> 
			<td>${customer.name}</td>
			<td>${customer.email}</td>
			<td>${customer.address}</td>
			<td>
				<a href="edit?id=${customer.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${customer.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>