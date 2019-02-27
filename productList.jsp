<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="main.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
	<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system"
		password="tiger" />

	<sql:query dataSource="${db}" var="result">
       select * from product
         </sql:query>
	<nav class="navbar navbar-expand-sm " style="background-color:#E5E7EA">

	<a class="navbar-brand" href="#" style="color: black;">GRIZZLY<img
		src="images/pr2.png" style="width: 50px"></img>STORE
	</a> <input type="text" class="form-rounded col-sm-2 ml-sm-2 mr-sm-2"
		name="fname" placeholder="  Search   "
		style="background-color: white; border: 0px; width: 150px;">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsableNavbar">
		<span class="navbar-toggler-icon"> </span>
	</button>
	<div id="collapsableNavbar"
		class="collapse navbar-collapse justify-content-end">
		<p>
			<a href="#"> <img src="images/not1.png" alt="img" width="50px;"
				height="50px"></span>
			</a>
		</p>
		<%	session.setAttribute("user", request.getParameter("t1")); %>
		&nbsp;&nbsp;&nbsp; <span><strong>Welcome, <%=request.getParameter("t1")%></strong></span>&nbsp;&nbsp;&nbsp;
		<a href="login.html"><input type="submit" class="form-rounded"
			style="background-color: #B0B4BA; color: white; border: 0;"
			value="   Logout   "></a>
	</nav>
	<br>
	<br>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1 col-md-4 col-lg-2 d2">
				<div class="container d1">
					<h5 class="a2">
						PROFILE
						
					</h5>
					<div style="margin: 6px;" align="center">
						<img class="img1" src="images/admin.jpg" alt="Vendor img">
						<h4>Halen Cho</h4>
						<h5>ID</h5>
						<h6>3.7</h6>
						<dl>
							<dt>
								<h5>Contact</h5>
							</dt>
							<dd>978601XXXX</dd>
							<dt>
								<h5>Address</h5>
							</dt>
							<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing
								elit, sed diam nonummy nibh</dd>
						</dl>
						<br> <br> <a href="#"><input type="submit"
							class="form-rounded"
							style="background-color: #B0B4BA; color: white; border: 0;"
							value="   Contact Grizzly   "></a>
					</div>
				</div>
			</div>
			<div class="col-sm-11 col-md-8 col-lg-10">
				<div class="container">
					<div class="btn-group b1" style="width: 105%">
						<a href="#" class="btn active btn-lg btn-outline-secondary">PRODUCTS</a>
						<a href="inventory.html" class="btn btn-lg btn-outline-secondary">INVENTORY</a>
						<a href="#" class="btn btn-lg btn-outline-secondary">PROFILE</a>
					</div>
					<div class="form-inline d3">

						<select class="form-rounded col-sm-2 ml-sm-2 mr-sm-2"
							style="background-color: #E5E7EA; border: 0px;" id="sel1">
							<option>Choose Action</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select> <input type="text" class="form-rounded col-sm-3 ml-sm-2 mr-sm-2"
							name="fname" placeholder="  Product Name/ ID...   "
							style="background-color: #E5E7EA; border: 0px; width: 250px;">
						<select class="form-rounded col-sm-2 ml-sm-2 mr-sm-2"
							style="background-color: #E5E7EA; border: 0px;" id="sel2">
							<option>Sort by</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select> <a href="products.jsp"> <input type="submit"
							class="form-rounded ml-col-5 mr-col-5"
							style="text-align: right; background-color: #B0B4BA; color: white; border: 0;"
							value="   Add Product   " align="right"></a>
					</div>
					<div class="container">
						<table class="table t1 ">
							<tr>
								<th>Product List</th>
								<th>Brand</th>
								<th>Category</th>
								<th>Rating</th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
							<c:forEach var="row" items="${result.rows}">
								<tr>
									<td><c:out value="${row.name}" /></td>
									<td><c:out value="${row.brand}" /></td>
									<td><c:out value="${row.category}" /></td>
									<td><c:out value="${row.rating}" /></td>
									<td><a href="view.jsp?desc=${row.description}&price=${row.price}&brand=${row.brand}&name=${row.name}&rating=${row.rating}"><input type="button"
											value="View"></a></td>
									<td><input type="button" value="Block"></td>
									<td><input type="button" value="Remove"></td>
								</tr>
							</c:forEach>

						</table>
					</div>
				</div>
			</div>
		</div>
</body>
</html>