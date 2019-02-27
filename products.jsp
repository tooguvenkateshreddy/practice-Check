<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" type="text/css" href="main.css"/>
</head>
<body>
<nav class="navbar navbar-expand-sm" style="background-color:#E5E7EA">

					<a class="navbar-brand" href="#" style="color:black;">GRIZZLY<img src="../images/img.png" style="width:50px"></img>STORE</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsableNavbar">
						<span class="navbar-toggler-icon">
						</span>
					</button>
					<div id="collapsableNavbar" class="collapse navbar-collapse justify-content-end">
                                   <p><a href="#">
                                      <img src="../images/not1.png" alt="img" width="50px;" height="50px"></span>
                                    </a></p>&nbsp;&nbsp;&nbsp;
                        <span><strong>Welcome, <%= session.getAttribute("user") %></strong></span>&nbsp;&nbsp;&nbsp;
                      <a href="logout.jsp">  <input type="submit" class="form-rounded" style="background-color:#B0B4BA;color: white;border:0;" value="   Logout   "></a>
               </nav><br><br>

                    <div class="container-fluid">
                      <div class="row">
                        <div class="col-sm-3 col-md-3 col-lg-3 d2">
                            <div class="container d1">
                                   <h5 class="a2">PROFILE</h5>
                                    <div style="margin:6px;" align="center">
                                        <img class="img1" src="../images/admin.jpg" alt="Admin img">
                                        <h4>HELEN CHO</h4>
                                        <dl>
                                            <dt><h5>ID</h5></dt>
                                            <dd>GRZLY17234</dd>
                                            <dt><h5>Designation</h5></dt>
                                            <dd>Sr.Admin</dd>
                                            <dt><h5>Office</h5></dt>
                                            <dd>NYC, NY, USA</dd>
                                        </dl>
                               </div>
                            </div>
                        </div>
                        <div class="col-sm-9 col-md-9 col-lg-9">
                                <div class="container">
                                    <div class=" btn-group b1" style="width:105%"  >
                                        <a href="#" class="btn active btn-lg btn-outline-secondary" >PRODUCTS</a>
                                        <a href="#" class="btn btn-lg btn-outline-secondary">VENDORS</a>
                                        <a href="#" class="btn btn-lg btn-outline-secondary"></a>
                                    </div>

                                       <div class="row">
                                            <div class="col-sm-5 col-md-5 col-lg-5">
                                                    <div class="container c3">
                                                            <div class="card bg-light"  style="width:300px;height:450px;background-color: #B0B4BA;" id="box">
                                                            <p>1</p>
                                                            <div class="card bg-active bg-light" id="bo">
                                                            <h1 align="center" style="font-size:250px;color:#d3d3d3;border:none;">+</h1>
                                                            </div><br>
                                                            <h6 align="center" style="font-size:30px;color:#d3d3d3">Add Images</h6>
                                                            </div>
                                                            <br>
                                                            <div class="card-deck" style="width:350px;height:60px;margin-left:-30px">
                                                                        <div class="alert alert-secondary alert-dismissible">
                                                                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                                                        <img src="" alt="2" class="img i">
                                                                                        </div>
                                                                        <div class="alert alert-secondary alert-dismissible">
                                                                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                                                        <img src="" alt="3" class="img i">
                                                                                        </div>
                                                                        <div class="alert alert-secondary alert-dismissible">
                                                                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                                                        <img src="" alt="4" class="img i">
                                                                                        </div>
                                                                        <div class="alert alert-secondary alert-dismissible">
                                                                                         <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                                                         <img src="" alt="5" class="img i">
                                                                                         </div>
                                                            </div>
                                                        </div>


                                                </div>
                                                <div class="col-sm-5 col-md-5 col-lg-5">
                                                    <div style="margin:10px;">
                                                    <form action="addProduct" method="post">
                                                    <h5>	<input type="text" name="t1" class="col-sm-10" placeholder="Enter Product ID"></h5>
															<hr>
                                                            <div class="dropdown">
                                                                    <select name="category" id="sel1" required>
                                                 						 <option disabled>Category</option>
                                                 						 <option>Electronics</option>
                                                 						 <option>Appliances</option>
                                                						 <option>Personalcare</option>
                                                						 <option>Laptops</option>
                                                						 <option>ArtSupplies</option>
                                            						</select>
                                                            </div>
															<hr>
														    <h5>	<input type="text" name="t2" class="col-sm-10" placeholder="Name"></h5>
															<hr>
															<h5>	<input type="text" name="t3" class="col-sm-10" placeholder="Description"></h5>
															<hr>
															<h5>	<input type="text" name="t4" class="col-sm-10" placeholder="Price"></h5>
														    <hr>
														    <h5>	<input type="text" name="t5" class="col-sm-10" placeholder="Brand"></h5>
														    <hr>
														    <h5>	<input type="text" name="t6" class="col-sm-10" placeholder="Rating"></h5>
														    <hr>
                                                    </div>

                                                </div>
                                                <div class="col-sm-2 col-md-2 col-lg-2">
                                                    <div class="form c1 justify-content-end" action="#">
                                                            <input type="submit" class="form-rounded" style="background-color:gray;color: white;border:0;width: 150px;" value="   Add   "><br>
                                                            <input type="reset" class="form-rounded" style="background-color:#B0B4BA;color: black;border:0;width: 150px;" value="   Cancel   ">
                                                    </div>
                                                </div>
                                                </form>
                                       </div>

                                    </div>
                                </div>
                        </div>
                      </div>
                    </div>
</body>
</html>