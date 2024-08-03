<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.easy.project.model.User"%>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wdth@75..100&display=swap"
	rel="stylesheet">

<%-- link css file  --%>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">

<%-- link js file --%>
<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='js/camera.min.js'></script>

<%-- Bootstrap ref --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<%-- google icon ref --%>
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet">

<style>
.navbar {
	background: linear-gradient(to right, rgb(23, 3, 33), rgb(83, 12, 89));
	/* Background gradient */
	height: 80px;
}

.nav-link {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	text-decoration: none;
}

.nav-link span {
	font-size: 40px; /* Default icon size */
	transition: font-size 0.3s ease; /* Smooth transition for icon size */
	color: white;
}

.nav-link:hover span {
	color: rgb(221, 255, 27);
	font-size: 55px; /* Hover icon size */
}

.nav-link p {
	margin: 0;
	font-size: 18px; /* Adjust the text size if necessary */
	color: red; /* Text color */
}

.navbar-nav .nav-item {
	margin-left: 20px; /* Add space between nav items */
}

.welcome-container {
        position: absolute;
        top: 92px;
        right: 20px;
        z-index: 99999;
        font-family: 'Helvetica Neue', Arial, sans-serif;
    }

    .welcome-message {
        background-color: #007BFF;
        color: white;
        padding: 5px 30px;
        border-radius: 10px;
        font-size: 18px;
        box-shadow: 0 0 10px 2px rgba(255, 255, 0, 0.8), 0 0 5px 1px rgba(0, 0, 0, 0.3);
    }
</style>


<%
User sessionUser = null;
if (session.getAttribute("userDetails") != null) {
	sessionUser = (User) session.getAttribute("userDetails");
}
%>

<%=(sessionUser != null && sessionUser.getRoleId() == 3 && request.getAttribute("errorMessage") != null
		? ", " + (String) request.getAttribute("errorMessage")
		: "")%>


<nav class="navbar navbar-expand-lg navbar-light bg-light w-100">
	<div class="container-fluid">
		<div class="navbar-header d-flex align-items-center">
			<a class="navbar-brand" href="index.jsp"> <img
				src="images/re_logo.png" alt="company logo">
			</a>
			<h4 class="cmpy_name ms-3">
				Prime<span style="color: rgb(211, 159, 75)">Pulse</span>
			</h4>
		</div>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul
				class="navbar-nav ms-auto mb-2 mb-lg-0 d-flex justify-content-end">
				<li class="nav-item">
					<%
					if ((sessionUser != null && sessionUser.getRoleId() == 1)) {
					%> <a class="nav-link active" aria-current="page" href="Admin.jsp">
						<span class="material-symbols-outlined">home</span>
						<p>Home</p>
				</a>
				</li>
				<%
				} else if (sessionUser == null || (sessionUser != null && sessionUser.getRoleId() != 3)) {
				%>
				<a class="nav-link active" aria-current="page" href="index.jsp">
					<span class="material-symbols-outlined">home</span>
					<p>Home</p>
				</a>
				</li>
				<%
				}
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="AboutUs.jsp"> <span
						class="material-symbols-outlined">groups</span>
						<p>About Us</p>
				</a></li>
				<%
				if (sessionUser == null || (sessionUser != null && sessionUser.getRoleId() != 3)) {
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="Gallery.jsp"> <span
						class="material-symbols-outlined">gallery_thumbnail</span>
						<p>Gallery</p>
				</a></li>
				<%
				}
				%>
				<%
				if (sessionUser != null && (sessionUser.getRoleId() == 3 || sessionUser.getRoleId() == 1)) {
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="SellProperty.jsp"> <span
						class="material-symbols-outlined">in_home_mode</span>
						<p>Sell Property</p>
				</a></li>
				<%
				}
				%>
				<%
				if (sessionUser != null && (sessionUser.getRoleId() == 2 || sessionUser.getRoleId() == 1)) {
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="Search.jsp"> <span
						class="material-symbols-outlined">travel_explore</span>
						<p>Search Property</p>
				</a></li>
				<%
				}
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="ContactUs.jsp"> <span
						class="material-symbols-outlined">phone_in_talk</span>
						<p>Contact Us</p>
				</a></li>
				<%
				if (sessionUser != null) {
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="SignOutController"> <span
						class="material-symbols-outlined">logout</span>
						<p>Logout</p>
				</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="UpdateProfile.jsp"> <span
						class="material-symbols-outlined">update</span>
						<p>Update Profile</p>
				</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="SignIn.jsp"> <span
						class="material-symbols-outlined">login</span>
						<p>Login</p>
				</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</nav>

<div class="welcome-container">
	<%
	if (sessionUser != null) {
	%>
	<div class="welcome-message">
		Welcome :
		<%=sessionUser.getName()%>
	</div>
	<%
	}
	%>
</div>






<%-- cdn link for bootstrap [js] --%>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>



























