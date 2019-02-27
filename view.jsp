<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product View</title>
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

	
	<nav class="navbar navbar-expand-sm " style="background-color:#E5E7EA">

	<a class="navbar-brand" href="#" style="color: black;">GRIZZLY<img
		src="images/pr2.png" style="width: 50px"></img>STORE
	</a>
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
		&nbsp;&nbsp;&nbsp; <span><strong>Welcome, <%= session.getAttribute("user") %>
				</strong></span>&nbsp;&nbsp;&nbsp; <a href="logout.jsp"><input
			type="submit" class="form-rounded"
			style="background-color: #B0B4BA; color: white; border: 0;"
			value="   Logout   "></a>
	</nav>
	<br>
	<br>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1 col-md-4 col-lg-2 d2">
				<div class="container d1">
					<h5 class="a2">PROFILE</h5>
					<div style="margin: 6px;" align="center">
						<img class="img1" src="images/admin.jpg" alt="Admin img">
						<h4>HELEN CHO</h4>
						<dl>
							<dt>
								<h5>ID</h5>
							</dt>
							<dd>GRZLY17234</dd>
							<dt>
								<h5>Designation</h5>
							</dt>
							<dd>Sr.Admin</dd>
							<dt>
								<h5>Office</h5>
							</dt>
							<dd>NYC, NY, USA</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="col-sm-11 col-md-8 col-lg-10">
				<div class="btn-group b1" style="width: 105%">
					<a href="#" class="btn active btn-lg btn-outline-secondary">PRODUCTS</a>
					<a href="venders.html" class="btn btn-lg btn-outline-secondary">VENDORS</a>
					<a href="3.html" class="btn btn-lg btn-outline-secondary">CATEGORY</a>
				</div>
				<div>
					<div id="h1" style="margin: 3px;">
						<h3><%= request.getParameter("name") %></h3>
						<p>by <%= request.getParameter("brand") %></p>
					</div>
					Rating <%= request.getParameter("rating") %>
				</div>
				<div class="row">
					<div class="col-sm-5">
						<div id="demo" class="carousel slide" data-ride="carousel"
							style="margin: 3px;">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item">
									<img src="" alt="Los Angeles">
									<div class="carousel-caption">
										<h3>Product Image carousel</h3>
									</div>
								</div>
								<div class="carousel-item">
									<img src="" alt="img2">
								</div>
								<div class="carousel-item">
									<img src="" alt="img3">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a> <a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>

						</div>
					</div>
					<div class="col-sm-4">
						<h3>Product Description</h3>
						<%= request.getParameter("desc") %>
						<div id="h">
							<h3>Rs. <%= request.getParameter("price") %>/-</h3>
							<p>15% off</p>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="form c1 justify-content-end" action="#">
							<input type="button" class="form-rounded"
								style="background-color: gray; color: white; border: 0; width: 150px;"
								value="   Finish   "><br> <input type="button"
								class="form-rounded"
								style="background-color: #B0B4BA; color: black; border: 0; width: 150px;"
								value="   Cancel   ">
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	</div>
</body>
</html>