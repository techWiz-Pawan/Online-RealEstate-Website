<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.easy.project.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="css/admin.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin Profile</title>

<style>
.profile-header {
	transform: translateY(5rem);
}

body {
	background: #654ea3;
	background: -webkit-linear-gradient(to right, #654ea3, #eaafc8);
	background: linear-gradient(to right, #654ea3, #eaafc8);
	min-height: 100vh;
}

.backImage {
	background: url("./images/admin/adm_backImg.jpg");
}

.hero-image {
	background-image: url(./images/admin/adm_backImg.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.fa {
	padding: 10px;
	font-size: 15px;
	width: 15px;
	text-align: center;
	text-decoration: none;
	margin: 5px 5px;
	border-radius: 50%;
}

.fa:hover {
	opacity: 0.7;
}

.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-twitter {
	background: #55ACEE;
	color: white;
}

.fa-google {
	background: #dd4b39;
	color: white;
}

.fa-linkedin {
	background: #007bb5;
	color: white;
}
</style>

</head>
<body>

	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="Admin.jsp">Admin Dashboard</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="SignOutController">Logout</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<!-- Sidebar -->
			<nav class="col-md-3 col-lg-2 d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							href="Admin.jsp">Dashboard</a></li>
						<li class="nav-item"><a class="nav-link"
							href="FetchAdminData">Admin Profile</a></li>
						<li class="nav-item"><a class="nav-link"
							href="ViewAllUsersController">User Details</a></li>
						<li class="nav-item"><a class="nav-link"
							href="ViewAllSellersController">Seller Details</a></li>
						<li class="nav-item"><a class="nav-link"
							href="ShowProperties.jsp">Property Details</a></li>
						<li class="nav-item"><a class="nav-link"
							href="SellProperty.jsp">Sell Property</a></li>
						<li class="nav-item"><a class="nav-link"
							href="ViewAllMessagesServlet">View Messages</a></li>
						<li class="nav-item"><a class="nav-link" href="todo.jsp">To-Do
								List</a></li>
					</ul>

					<!-- Admin Info -->
					<div class="admin-info admin-footer">
						<%
						Object userDetailsObj = session.getAttribute("userDetails");
						if (userDetailsObj != null && userDetailsObj instanceof User) {
							User adminUser = (User) userDetailsObj;
						%>
						<h5>
							Welcome,
							<%=adminUser.getName()%></h5>
						<%
						} else {
						%>
						<h5>Welcome, Guest</h5>
						<!-- Handle as per your application logic -->
						<%
						}
						%>
					</div>

				</div>
			</nav>

			<!-- Main content area -->
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
				<div class="row dashboard-section">
					<div class="col-md-12">
						<div class="container card mt-4 hero-image"
							style="height: 10.5rem;">
							<div class="row card-body" style="position: relative;">
								<div class="col-md-5" style="position: absolute;">
									<img class="img-thumbnail" alt="admin pfp"
										src="./images/team/team3.jpg">
									<div class="container"
										style="z-index: 11; position: absolute; top: 0px; left: 250px;">
										<h5><%=(String) request.getAttribute("name")%></h5>
										<h4 class="btn btn-success">Administrator</h4>
										<p></p>

										<a href="#" class="fa fa-facebook"></a> 
										<a href="#"	class="fa fa-twitter"></a> 
										<a href="#" class="fa fa-google"></a>
										<a href="#" class="fa fa-linkedin"></a>

									</div>
								</div>
								<div class="col-md-5"></div>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<br /> <br />
						<div class="container card mt-4">
							<div class="row card-body">
								<div class="col-md-6">
									<label>Email</label> <br> 
									<input type="text" value="<%=(String) request.getAttribute("email")%>" disabled> <br> <br> 
									
									<label>Full	Name</label> <br> 
									<input type="text" value="<%=(String) request.getAttribute("name")%>" disabled>	<br> <br> 
									
									<label>Gender</label> <br> 
									<input type="text" value="<%=(String) request.getAttribute("gender")%>" disabled> <br> <br>

								</div>
								<div class="col-md-6">
									<label>Password</label> <br> 
									<input type="text" value="<%=(String) request.getAttribute("password")%>" disabled> <br> <br> 
									
									<label>Phone Number</label> <br> 
									<input type="text" value="+91 <%=(String) request.getAttribute("mobile")%>" disabled> <br> <br> 
									
									<label>Age</label> <br> 
									<input type="text" value="<%=(String) request.getAttribute("age")%>" disabled>	<br> <br>
								</div>

							</div>
						</div>
					</div>

				</div>
			</main>
		</div>
	</div>

</body>
</html>
