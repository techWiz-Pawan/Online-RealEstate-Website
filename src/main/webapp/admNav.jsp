<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.easy.project.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
/* Custom styles */
body {
	padding-top: 4.5rem; /* Adjust based on your navbar height */
}

.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: 100;
	padding: 48px 0 0;
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
}

.sidebar-sticky {
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: .5rem;
	overflow-x: hidden;
	overflow-y: auto;
	/* Scrollable contents if viewport is shorter than content. */
}

.dashboard-section {
	margin-bottom: 20px;
}

.admin-footer{
	position: absolute;
	bottom: 0;
	left:20px;	
}
</style>
</head>
<body>
	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">Admin Dashboard</a>
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
						<li class="nav-item"><a class="nav-link active" href="#">Dashboard</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Admin
								Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="#">User
								Details</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Seller
								Details</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Property
								Details</a></li>
						<li class="nav-item"><a class="nav-link" href="#">View
								Messages</a></li>
						<li class="nav-item"><a class="nav-link" href="#">To-Do
								List</a></li>
					</ul>

					<!-- Admin Info -->
					<div class="admin-info, admin-footer" >
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

			
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
