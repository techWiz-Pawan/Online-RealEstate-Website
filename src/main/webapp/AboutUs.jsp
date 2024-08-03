<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/galleryStyle.css" type="text/css"
	media="all" />

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

<style>
.About-banner {
	background-image: url(./images/about/about_banner.jpg);
	background-size: cover;
	width: 100%;
	height: 50vh;
}
</style>

<title>About Us</title>
</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>

	<div class="About-banner"></div>

	<div class="container py-5">
		<div class="text-center mb-5">
			<h1>About PrimePulse</h1>
			<p class="lead">Helping Families, First-Time Buyers, and
				Investors Achieve Their Real Estate Dreams</p>
		</div>

		<div class="row">
			<div class="col-lg-6 mission-values">
				<h2 class="section-title">Our Mission</h2>
				<p class="mb-4">At PrimePulse, our mission is to empower our
					clients with the knowledge and resources needed to make informed
					real estate decisions. We provide personalized attention and expert
					guidance throughout the buying, selling, or investing process. </p>
				<p>Our dedicated team ensures a seamless and stress-free experience by
					offering in-depth market insights, current trends, and professional
					advice. Leveraging innovative technology and tools, we deliver the
					resources to enhance your real estate journey. Our commitment to
					excellence is built on long-term relationships founded on trust,
					integrity, and mutual respect.</p>
					
				<br/>
				<h2 class="section-title">Our Values</h2>
				<ul class="list-unstyled">
					<li><b style="font-weight : bold;">Integrity:</b> We operate with honesty,
						transparency, and ethical standards.</li>
					<li><b style="font-weight : bold;">Client-Centricity:</b> Your needs and goals
						are our top priority.</li>
					<li><strong style="font-weight : bold;">Expertise:</strong> Our team brings extensive
						local market knowledge and industry experience.</li>
					<li><strong style="font-weight : bold;">Innovation:</strong> We utilize cutting-edge
						technology and innovative strategies.</li>
					<li><strong style="font-weight : bold;">Teamwork:</strong> Collaboration is at the heart
						of everything we do.</li>
				</ul>
			</div>

			<div class="col-lg-6 mission-values">
				<h2 class="section-title">What Sets Us Apart</h2>
				<ul class="list-unstyled">
					<li><strong style="font-weight : bold;">Tailored Solutions:</strong> Personalized real
						estate solutions to meet your unique needs.</li>
					<li><strong style="font-weight : bold;">Award-Winning Service:</strong> Recognized for
						excellence in customer service and client satisfaction.</li>
					<li><strong style="font-weight : bold;">Local Expertise:</strong> Deep understanding of
						the local market trends and neighborhoods.</li>
					<li><strong style="font-weight : bold;">Comprehensive Support:</strong> From property
						management to financing assistance, we offer a wide range of
						services to support your real estate journey.</li>
				</ul>

				<h2 class="section-title">Our Commitment</h2>
				<p class="commitment">We are committed to providing a seamless
					and stress-free experience for all our clients. Building lasting
					relationships based on trust, communication, and respect is
					fundamental to how we operate. Our goal is not just to meet your
					expectations but to exceed them.</p>
			</div>
		</div>

		<div class="history">
			<h2 class="section-title">Our History</h2>
			<p>PrimePulse was founded by Easy with a vision to revolutionize
				the real estate industry by focusing on client needs and leveraging
				modern technology. Over the years, we have grown into a trusted name
				in the real estate market, known for our integrity, innovation, and
				outstanding service. Our journey began with a small team of
				passionate real estate professionals and has expanded into a
				full-service firm with a reputation for excellence.</p>
		</div>

		<div class="team-section">
			<h2 class="section-title">Meet Our Team</h2>
			<div class="row">
				<div class="col-lg-4 col-md-6 team-member text-center">
					<img src="./images/about/team2.jpg" alt="Founder Image">
					<h5>Easy</h5>
					<h4>Founder & CEO</h4>
					<br/>
					<p style="text-align: justify;">Easy is the visionary behind PrimePulse, bringing years of
						experience and a passion for real estate. His leadership and
						dedication ensure the highest standards of service and client
						satisfaction.</p>
				</div>
				<div class="col-lg-4 col-md-6 team-member text-center">
					<img src="./images/about/team4.jpg" alt="Agent 1 Image">
					<h5>Kelly McMillan</h5>
					<h4>Senior Real Estate Agent</h4>
					<br/>
					<p style="text-align: justify;">Kelly McMillan is a seasoned expert with a deep
						understanding of the local market. Known for her
						negotiation skills and client-first approach, she consistently
						helps clients achieve their real estate goals.</p>
				</div>
				<div class="col-lg-4 col-md-6 team-member text-center">
					<img src="./images/about/team3.jpg" alt="Agent 2 Image">
					<h5>Peter Clarkson</h5>
					<h4>Real Estate Agent</h4>
					<br/>
					<p style="text-align: justify;">Peter Clarkson is dedicated to providing personalized
						service and support. With a keen eye for detail and a commitment
						to excellence, she ensures a smooth and successful real estate
						experience for all clients.</p>
				</div>
			</div>
		</div>

		<div class="row mt-5">
			<div class="col">
				<h2 class="section-title">Testimonials</h2>
				<div class="testimonial">
					<p>"Working with PrimePulse was a game-changer for us. Their
						expertise and dedication made all the difference." - Sarah and
						John Smith</p>
				</div>
				<div class="testimonial">
					<p>"From start to finish, PrimePulse provided exceptional
						service and made the entire process effortless." - Happy Client</p>
				</div>
				<div class="testimonial">
					<p>"The team at PrimePulse is knowledgeable, professional, and
						truly cares about their clients. We couldn't have asked for a
						better experience." - Another Satisfied Client</p>
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
	<div style="margin: 100px 0;"></div>
	
	<div style="display: block">
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>



















