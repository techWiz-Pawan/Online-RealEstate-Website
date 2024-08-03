<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<title>Login</title>

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
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/style.css">

<style>
.spacing {
	margin: 30px 0;
}

.custom-card {
	width: 900px !important;
	height: 500px !important;
	opacity: 1; /* Set opacity to 1 for full visibility */
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}
</style>

</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>

	<video autoplay muted loop id="bg-video">
		<source src="images/bg_image1.mp4" type="video/mp4">
		Your browser doesnt support HTML5 video
	</video>

	<div class="d-flex justify-content-center align-items-center vh-100">
		<div class="card mb-3 custom-card"
			style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9; border-radius: 25px;">
			<div class="row g-0">
				<div class="col-md-6">
					<div class="card-body">
						<h5 class="card-title text-center">User Login</h5>
						<h4><%=(request.getAttribute("errorMessage") != null ? (String) request.getAttribute("errorMessage") : "")%></h4>
						<form name="login" method="post" action="SignInController">
							<div class="mb-3 spacing">
								<label for="loginEmail" class="form-label">Email address</label>
								<input type="email" name="loginEmail" class="form-control"
									id="loginEmail" placeholder="Enter your email">
							</div>
							<div class="mb-3 spacing">
								<label for="loginPassword" class="form-label">Password</label> <input
									type="password" name="loginPassword" class="form-control"
									id="loginPassword" placeholder="Enter your password">
							</div>
							<div class="mb-3 spacing">
								<label class="form-label">Role</label>
								<div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="role"
											id="admin" value="1"> <label class="form-check-label"
											style="color: aliceblue;" for="admin">Admin</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="role"
											id="buyer" value="2"> <label class="form-check-label"
											style="color: aliceblue;" for="buyer">Buyer</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="role"
											id="seller" value="3"> <label
											class="form-check-label" style="color: aliceblue;"
											for="seller">Seller</label>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary w-100"
								style="margin: 40px 0;">Login</button>
						</form>

					</div>
				</div>
				<div
					class="col-md-6 d-flex flex-column justify-content-center align-items-center">
					<img src="images/login_img.png" class="img-fluid rounded-start"
						alt="Login Image" style="max-width: 90%; max-height: 90%;">
					<div class="text-center mt-3">
						<span style="color: aliceblue;">Don't have an account? <a
							href="SignUp.jsp" style="color: yellow;">Sign Up</a></span>
					</div>
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