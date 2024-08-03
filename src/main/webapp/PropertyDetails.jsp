<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Teko:wght@300..700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<title>Property Details</title>

<style>
/* Optional: Add animation to carousel slides */
.carousel-item {
	transition: transform 0.6s ease;
}

.rent-or-buy-card {
	border: 1px solid #ccc;
	padding: 5px 10px;
	border-radius: 5px;
}

/* 3rd row */
.property-details-row {
	font-size: 20px;
	font-family: Georgia, 'Times New Roman', Times, serif;
}

.contact-body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.card {
    width: 70%;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    border-radius: 10px;
}

.card:hover {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.16), 0 4px 10px rgba(0, 0, 0, 0.23);
}

.card-body {
    display: flex;
    flex-direction: row;
    text-align: left;
}

.card-title {
    font-size: 25px;
    font-weight: bold;
}

.form-section {
    flex: 1;
}

.image-section {
    flex: 1;
    text-align: center;
}

.image-section img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
}

.card-input-effect input:focus {
    border-color: rgb(28, 69, 2);
    background-color: #ceef68;
}

</style>

</head>
<body class="empty-body">

	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>


	<nav
		style="--bs-breadcrumb-divider: url(&amp; amp; amp; amp; #34; data: image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&amp;amp;"
		aria-label="breadcrumb">
		<ol class="breadcrumb justify-content-end" style="margin: 15px 30px;">
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			<li class="breadcrumb-item"><a href="Search.jsp">Search
					Property</a></li>
			<li class="breadcrumb-item active" aria-current="page">Property
				Details</li>
		</ol>
	</nav>

	<div class="container mt-4">
		<!-- First Row: Rent or Buy and Property Titles -->
		<div class="row mb-3">
			<div class="col-md-9 d-flex align-items-center">
				<div class="rent-or-buy-card bg-success">
					<h5><%=(String) request.getAttribute("rentOrSell")%></h5>
				</div>
				<h5 class="ml-2 flex-grow-1"
					style="margin-left: 15px; font-size: 25px;">
					<%=(String) request.getAttribute("propertyName")%></h5>
			</div>
			<div class="col-md-3 d-flex justify-content-end align-items-center">
				<div class="text-right">
					<h5>
						<%
						Integer propertyId = (Integer) request.getAttribute("propertyId");
						if (propertyId != null) {
						%>
						Property ID: <span
							style="color: rgb(128, 30, 86); font-weight: 500;"><%=propertyId%></span>
						<%
						} else {
						// Handle null case, perhaps display an error message or redirect
						response.sendRedirect(request.getContextPath() + "/404.jsp");
						}
						%>

					</h5>
				</div>

			</div>
		</div>
		<hr>


		<!-- Second Row: Carousel -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">

				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./images/PropertyResult/ps1.jpg" class="d-block w-100"
						alt="House Image 1">
				</div>
				<div class="carousel-item">
					<img src="./images/PropertyResult/ps2.jpg" class="d-block w-100"
						alt="House Image 2">
				</div>
				<div class="carousel-item">
					<img src="./images/PropertyResult/ps3.jpg" class="d-block w-100"
						alt="House Image 3">
				</div>
				<div class="carousel-item">
					<img src="./images/PropertyResult/ps4.jpg" class="d-block w-100"
						alt="House Image 4">
				</div>
				<div class="carousel-item">
					<img src="./images/PropertyResult/ps5.jpg" class="d-block w-100"
						alt="House Image 5">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>


		<!-- Third Row: Property Details -->
		<div class="row property-details-row" style="margin: 3% 0;">
			<div class="col-md-2">
				<p>
					<span class="material-symbols-outlined"
						style="color: rgb(187, 187, 71); font-size: 2rem;">
						area_chart </span> Sq ft area:
					<%=(Double) request.getAttribute("area")%></p>
			</div>
			<div class="col-md-2">
				<p>
					<span class="material-symbols-outlined"
						style="color: rgb(187, 187, 71); font-size: 2rem;"> bed </span>
					Bedrooms:
					<%=(Integer) request.getAttribute("bedrooms")%></p>
			</div>
			<div class="col-md-2">
				<p>
					<span class="material-symbols-outlined"
						style="color: rgb(187, 187, 71); font-size: 2rem;"> bathtub
					</span> Bathrooms:
					<%=(Integer) request.getAttribute("bathrooms")%></p>
			</div>
			<div class="col-md-3">
				<p>
					<span class="material-symbols-outlined"
						style="color: rgb(187, 187, 71); font-size: 2rem;">
						home_work </span>
					<%=(String) request.getAttribute("propertyType")%></p>
			</div>
			<div class="col-md-3 d-flex justify-content-end">
				<p>
					<span class="material-symbols-outlined"
						style="color: rgb(187, 187, 71); font-size: 2rem;">
						credit_card </span> Price: ₹
					<%=(Double) request.getAttribute("price")%></p>
			</div>
		</div>
	</div>


	<div class="container mt-4">
		<div class="property-description">

			<h5>PROPERTY DESCRIPTION</h5>
			<hr>
			<p style="text-align: justify;">
				<%=(String) request.getAttribute("description")%></p>

		</div>
	</div>

	<div class="container mt-4">
		<div class="Property-Map">
			<h5>PROPERTY MAP</h5>
			<hr>
			<div class="row property-details-row" style="margin: 2% 0;">
				<div class="col-md-3">
					<p>
						Locality :
						<%=(String) request.getAttribute("locality")%></p>
				</div>
				<div class="col-md-3">
					<p>
						City :
						<%=(String) request.getAttribute("city")%></p>
				</div>
				<div class="col-md-3">
					<p>
						State :
						<%=(String) request.getAttribute("state")%></p>
				</div>
				<div class="col-md-3 d-flex">
					<p>
						Country :
						<%=(String) request.getAttribute("country")%></p>
				</div>
			</div>

			<div style="width: 100%; margin-top: 30px;">
				<iframe src="<%=(String) request.getAttribute("googleMapLink")%>"
					width="100%" height="400" frameborder="0" style="border: 0"></iframe>
			</div>
			<br />

		</div>
	</div>
	
	<div class="contact-body">
        <div class="card text-center">
            <div class="card-body card-input-effect"
                style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9;">
                <div class="form-section">
                    <h1 class="card-title">Contact Us</h1>
                    <p class="card-text">Please fill this form in a decent manner</p>
                    <%
                        String pId = request.getParameter("propertyId");
                        
                    %>
                    <p>Inquiring about property: (ID: <%= pId %>)</p>
                    <form method="post" action="ContactFormServlet">
                        <input type="hidden" name="propertyId" value="<%= pId %>">
                        <div class="mb-3">
                            <label for="exampleInputName1" class="form-label">Name</label>
                            <input type="text" class="form-control" id="exampleInputName1" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputMobile1" class="form-label">Mobile</label>
                            <input type="tel" class="form-control" id="exampleInputMobile1" name="mobile">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputMessage1" class="form-label">Message</label>
                            <textarea class="form-control" id="exampleInputMessage1" name="message" rows="4"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="image-section">
                    <img style="margin-top: 13%;" src="./images/userProfile/contactUs.png" alt="Placeholder Image">
                </div>
            </div>
        </div>
    </div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
	<div style="display: block">
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>