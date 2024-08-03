<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | Easy</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
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


<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

<style>
body {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

h1 {
	font-size: 50px !important;
	font-weight: bold !important;
}

.carousel-caption {
	position: absolute;
	top: 10%; /* Position at the top */
	left: 30% !important;
	transform: translateX(-35%);
	text-align: left !important;
	font-family: Verdana, Geneva, Tahoma, sans-serif !important;
	color: white;
	padding: 20px;
	border-radius: 10px;
	width: 100vh; /* Ensure full width */
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
}

.carousel-caption h1 {
	font-size: 50px !important;
	font-weight: bold !important;
	color: rgb(237, 218, 76);
}

.carousel-caption h2 {
	font-size: 30px !important;
}

.carousel-caption p {
	font-size: 18px !important;
	margin-top: 10px !important;
	margin-bottom: 0; /* Remove default margin */
	color: rgb(230, 230, 236);
}

.caro_btn {
	margin-top: 25px !important;
	box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px
		13px -3px, rgba(0, 0, 0, 0.2) 0px -30px 0px inset;
}

.property-view {
	padding: 40px;
	text-align: left;
}

.property-info {
	padding-top: 15px !important;
	font-weight: bold !important;
}

/* image hover */
.property-img-container {
	position: relative;
	display: inline-block;
	overflow: hidden; /* Ensure the overlay doesn't spill out */
}

.property-img-hover {
	display: block;
	width: 100%;
	transition: transform 0.3s ease; /* Smooth zoom effect */
}

.property-img-container::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5));
	/* Gradient from transparent to semi-transparent black */
	opacity: 0;
	transition: opacity 0.3s ease;
	pointer-events: none;
	/* Ensure the overlay doesn't interfere with hover events */
}

.property-img-container:hover::before {
	opacity: 1; /* Show overlay on hover */
}

.property-img-container:hover .property-img-hover {
	transform: scale(1.05); /* Slight zoom effect on hover */
}

.c_img {
	height: 100%; /* or your desired height */
	object-fit: cover !important;
}
</style>


</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>



	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/slides/s1.jpg" class="d-block w-100 c_img"
					alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h2>OFFERING DIVERSE</h2>
					<h1>PROPERTIES</h1>
					<p>
						PrimePulse provides you with lots of great properties throughout
						the USA so <br />that you could easily choose your dream
						property.
					</p>
					<a href="ShowProperties.jsp" class="btn btn-danger caro_btn"> VIEW
						PROPERTIES </a>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/slides/s2.jpg" class="d-block w-100 c_img"
					alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h2>EASILY</h2>
					<h1>RENT & SALE</h1>
					<p>
						With the help of our services and property management solutions,
						you <br />can rent or sell any house or apartment.
					</p>
					<a href="ShowProperties.jsp" class="btn btn-danger caro_btn"> VIEW
						PROPERTIES </a>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/slides/s3.jpg" class="d-block w-100 c_img"
					alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h2>MORE THAN 20 YEARS OF</h2>
					<h1>EXPERIENCE</h1>
					<p>
						Founded in 1989, our company is a team of renowned property <br />management
						and real estate experts always ready to help you.
					</p>
					<a href="ShowProperties.jsp" class="btn btn-danger caro_btn"> VIEW
						PROPERTIES </a>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="propery-show">
		<h1 style="text-align: center; margin: 50px 0">POPULAR PROPERTIES</h1>
		<div class="container text-center">
			<div class="row row-cols-2">
				<div class="col property-view property-img-container">
					<a style="color: black;" href="PropertyDetails.jsp?"> <img
						src="images/properties/propy1.jpg"
						class="img-fluid property-img-hover"
						style="border: 1px solid black" alt="..." />
						<h4 class="property-info">5619 Walnut Hill Ln, Dallas, TX
							75229</h4>
						<p style="font-size: 18px !important; font-weight: 500 !important">
							₹ <span style="color: blue">2500/mon</span>&nbsp;&nbsp;&nbsp
							|&nbsp;&nbsp;&nbsp 30 Sq. Ft. &nbsp;&nbsp;&nbsp|&nbsp;&nbsp;&nbsp
							3 Bedrooms
						</p>
						<p>A comfortable residential property located in a quiet and
							cozy area.</p>
					</a>
				</div>
				<div class="col property-view property-img-container">
					<a style="color: black;" href="#"> <img
						src="images/properties/propy2.jpg"
						class="img-fluid property-img-hover"
						style="border: 1px solid black" alt="..." />
						<h4 class="property-info">1808 Bolingbroke Pl, Fort Worth, TX
							76140</h4>
						<p style="font-size: 18px; font-weight: 500">
							₹ <span style="color: blue">4000/mon</span>&nbsp;&nbsp;&nbsp
							|&nbsp;&nbsp;&nbsp 40 Sq. Ft. &nbsp;&nbsp;&nbsp|&nbsp;&nbsp;&nbsp
							2 Bedrooms
						</p>
						<p>Perfect for those who love both city life and the
							countryside.</p>
					</a>
				</div>
				<div class="col property-view property-img-container">
					<a style="color: black;" href="#"> <img
						src="images/properties/propy3.jpg"
						class="img-fluid property-img-hover"
						style="border: 1px solid black" alt="..." />
						<h4 class="property-info">924 Bel Air Rd, Los Angeles, CA
							90077</h4>
						<p style="font-size: 18px; font-weight: 500">
							₹ <span style="color: blue">5500/mon</span>&nbsp;&nbsp;&nbsp
							|&nbsp;&nbsp;&nbsp 50 Sq. Ft. &nbsp;&nbsp;&nbsp|&nbsp;&nbsp;&nbsp
							4 Bedrooms
						</p>
						<p>Located in 5 mins from downtown, this property is great for
							anyone.</p>
					</a>
				</div>
				<div class="col property-view property-img-container">
					<a style="color: black;" href="#"> <img
						src="images/properties/propy4.jpg"
						class="img-fluid property-img-hover"
						style="border: 1px solid black" alt="..." />
						<h4 class="property-info">13510 W Cheery Lynn Rd, Avondale,
							AZ 85392</h4>
						<p style="font-size: 18px; font-weight: 500">
							₹ <span style="color: blue">7000/mon</span>&nbsp;&nbsp;&nbsp
							|&nbsp;&nbsp;&nbsp 90 Sq. Ft. &nbsp;&nbsp;&nbsp|&nbsp;&nbsp;&nbsp
							2 Bedrooms
						</p>
						<p>A luxury mansion for people who enjoy the high-end
							amenities.</p>
					</a>
				</div>
			</div>
			<a href="ShowProperties.jsp" class="btn btn-danger caro_btn"> VIEW
						PROPERTIES </a>
		</div>
	</div>

	<div class="container-fluid"
		style="background-color: rgb(99, 61, 86); margin: 100px 0; padding: 70px 0px; color: aliceblue;">
		<div class="container text-center">
			<div class="row g-4">
				<!-- Use g-4 class for spacing between columns -->
				<div class="col-12 col-md-4" style="padding: 0 50px">
					<h2
						style="color: rgb(237, 218, 76); padding-bottom: 20px; text-align: left;">
						<span class="material-symbols-outlined">person</span> Qualified
						Employees
					</h2>
					<p style="text-align: justify">Our team consists of more than
						20 qualified and experienced real estate brokers and property
						managers ready to help you.</p>
				</div>
				<div class="col-12 col-md-4" style="padding: 0 50px">
					<h2
						style="color: rgb(237, 218, 76); padding-bottom: 20px; text-align: left;">
						<span class="material-symbols-outlined">chat</span> Free
						Consultations
					</h2>
					<p style="text-align: justify">Our acquaintance with a client
						always begins with a free consultation to find out what kind of
						property they are looking for.</p>
				</div>
				<div class="col-12 col-md-4" style="padding: 0 50px">
					<h2
						style="color: rgb(237, 218, 76); padding-bottom: 20px; text-align: left;">
						<span class="material-symbols-outlined">star</span> 100%
						Guaranteed
					</h2>
					<p style="text-align: justify">All the results that you get
						from our realtors are 100% guaranteed to offer you the best choice
						of properties throughout the USA.</p>
				</div>
			</div>
		</div>
	</div>


	<div class="container text-center">
		<h1>RESIDENTIAL PROPERTY CATEGORIES</h1>
		<p class="mb-4" style="margin: 30px 0 50px 0">
			At our agency, we work with various types of residential real estate
			property. You can find <br />out more about our properties by
			browsing our website.
		</p>
		<div class="row justify-content-center">
			<div class="col text-center property-img-container">
				<a style="color: black;" href="#"> <img
					src="images/properties/res_prop1.jpg"
					class="img-fluid property-img-hover" alt="..." />
					<h4 class="res-property-info" style="margin-top: 20px">
						Single-Family Homes</h4>
				</a>
			</div>
			<div class="col text-center property-img-container">
				<a style="color: black;" href="#"> <img
					src="images/properties/res_prop2.jpg"
					class="img-fluid property-img-hover" alt="..." />
					<h4 class="res-property-info" style="margin-top: 20px">Townhouses</h4>
				</a>
			</div>
			<div class="col text-center property-img-container">
				<a style="color: black;" href="#"> <img
					src="images/properties/res_prop3.jpg"
					class="img-fluid property-img-hover" alt="..." />
					<h4 class="res-property-info" style="margin-top: 20px">
						Multi-Family Homes</h4>
				</a>
			</div>
			<div class="col text-center property-img-container">
				<a style="color: black;" href="#"> <img
					src="images/properties/res_prop4.jpg"
					class="img-fluid property-img-hover" alt="..." />
					<h4 class="res-property-info" style="margin-top: 20px">
						Condominiums</h4>
				</a>
			</div>

		</div>
		<a href="ShowProperties.jsp" class="btn btn-danger caro_btn"> VIEW ALL
						PROPERTIES </a>
	</div>


	<div class="our-team">
		<h1 style="text-align: center; margin: 50px 0;">OUR TEAM</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<img style="height: 250px; width: 250px;"
								src="images/team/team1.jpg" alt="Person 1 Image">
						</div>
						<div class="col property-view property-img-container">
							<h3>Nathalie Porter</h3>
							<p>Founder, Broker</p>
							<p>
								<br />Contact: Nat.proter@example.com
							</p>
							<p style="text-align: justify;">
								<br />Ms. Porter founded our company in 1989 with a vision to
								help guests and residents of the USA to easily find and buy or
								rent real estate in all 50 states.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<img style="height: 250px; width: 250px;"
								src="images/team/team2.jpg" alt="Person 2 Image">
						</div>
						<div class="col property-view property-img-container">
							<h3>John Doe</h3>
							<p>Sales Associate</p>
							<p>
								<br />Contact: john.doe@example.com
							</p>
							<p style="text-align: justify;">
								<br />John has been in sales and marketing for the past 15
								years. He has excellent knowledge about the local market both
								residential and commercial.
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<img style="height: 250px; width: 250px;"
								src="images/team/team3.jpg" alt="Person 3 Image">
						</div>
						<div class="col property-view property-img-container">
							<h3>Jane Smith</h3>
							<p>Realtor</p>
							<p>
								<br />Contact: jane.smith@example.com
							</p>
							<p style="text-align: justify;">
								<br />Jane is not only a Licensed Realtor but also holds the
								Title Producers and Mortgage Licenses, which makes him a very
								knowledgeable real estate expert.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<img style="height: 250px; width: 250px;"
								src="images/team/team4.jpg" alt="Person 4 Image">
						</div>
						<div class="col property-view property-img-container">
							<h3>Sarah Brown</h3>
							<p>Broker</p>
							<p>
								<br />Contact: sarah.brown@example.com
							</p>
							<p style="text-align: justify;">
								<br />Sarah goal to provide clients with guest level of
								marketing expertise and customer service to help them reach
								their uppermost real estate goals.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid"
		style="background: url(images/landscape.jpg); margin: 100px 0; padding: 70px 0px; color: aliceblue;">
		<div class="container text-center">
			<div class="row g-4">
				<!-- Use g-4 class for spacing between columns -->
				<div class="col-12 col-md-3" style="padding: 0 50px"></div>
				<div class="col-12 col-md-6" style="padding: 0 50px">
					<h2>BEST OFFERS</h2>
					<h5 style="padding: 15px 0;">of September</h5>
					<p style="text-align: center; padding-bottom: 15px;">With a
						variety of accountants available at our company, you can always
						choose one that fits your corporate requirements.</p>
					<button type="button" class="btn btn-light">READ MORE</button>
				</div>
				<div class="col-12 col-md-3" style="padding: 0 50px"></div>
			</div>
		</div>
	</div>




	<div class="container text-center">
		<h1 style="text-align: center; margin: 50px 0;">TESTIMONIALS</h1>
		<div class="row">
			<div class="col-6 col-md-4 property-img-container">
				<img
					style="height: 80px; width: 80px; border-radius: 45%; margin-right: 30px;"
					src="images/team/testi1.jpg" alt="Person 1 Image">
				<h3 style="display: inline; margin-top: 0;">Bill Warner</h3>

				<p style="text-align: justify;">
					<br /></>I have just sold a property with PrimePulse and I can’t
					thank them enough. Their team has great communication skills and
					they have regularly communicated with me throughout the whole
					process.
				</p>
			</div>
			<div class="col-6 col-md-4 property-img-container">
				<img
					style="height: 80px; width: 80px; border-radius: 45%; margin-right: 30px;"
					src="images/team/testi2.jpg" alt="Person 2 Image">
				<h3 style="display: inline; margin-top: 0;">Kelly McMillan</h3>

				<p style="text-align: justify;">
					<br /></>I have recently sold my rental property in Nelson via
					PrimePulse. Everything about the sale was made seamless by your
					team. You gave me great advice about what was necessary to expedite
					the sale.
				</p>
			</div>
			<div class="col-6 col-md-4 property-img-container">
				<img
					style="height: 80px; width: 80px; border-radius: 45%; margin-right: 30px;"
					src="images/team/testi3.jpg" alt="Person 3 Image">
				<h3 style="display: inline !important; margin-top: 0;">Peter
					Clarkson</h3>

				<p style="text-align: justify;">
					<br /></>I have to say that PrimePulse has the best brokers we've
					ever worked with. Their professionalism, personality, attention to
					detail, responsiveness and ability to close the deal are
					outstanding!
				</p>
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
	<div style="margin: 100px 0;"></div>
	<div style="display: block">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>














