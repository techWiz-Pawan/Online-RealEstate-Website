<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Sell Your Property</title>

<style>
.sellProperty-Container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 90vh;
	margin: 0;
}

.card {
	top : 10%;
	width: 70%;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	border-radius: 10px;
}

.card:hover {
	box-shadow: 0 4px 10px rgba(244, 235, 2, 0.5), 0 4px 10px
		rgba(231, 159, 159, 0.23);
}

.card-body {
	display: flex;
	flex-direction: row;
	text-align: left;
}

.form-section {
	flex: 1;
	padding: 2rem;
}

.form-section h1, .form-section p {
	text-align: left;
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

.empty-body {
	background-image: url(./images/back_op.png) !important;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 115vh;
	/* Adjusted to height for testing */
	margin: 0;
	padding: 0;
	background-color: rgba(0, 0, 0, 0.5);
}

.choice-text-color {
	color: white;
}
</style>


</head>
<body class="empty-body">

	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>

	<div class="sellProperty-Container">
		<div class="card text-center card-input-effect"
			style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9; border-radius: 25px;">
			<form action="SellPropertyController" method="post" enctype="multipart/form-data">
				<div class="card-body">
					<div class="form-section">


						<div class="mb-3">
							<input class="form-control" placeholder="Property Name"
								type="text" name="propertyName">
						</div>

						<div class="row mb-3">
							<div class="col-lg-6">
								<input class="form-control" placeholder="Area Sq Ft"
									type="number" name="Area">
							</div>
							<div class="col-lg-6">
								<input class="form-control" placeholder="Price" type="number"
									name="Price">
							</div>
						</div>
						
						<div class="row mb-3">
							<div class="col-lg-6">
								<input class="form-control" placeholder="Bedrooms" type="text"
									name="bedrooms">
							</div>
							<div class="col-lg-6">
								<input class="form-control" placeholder="Bathrooms" type="text"
									name="bathrooms">
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-lg-6">
								<input class="form-control" placeholder="Locality" type="text"
									name="locality">
							</div>
							<div class="col-lg-6">
								<input class="form-control" placeholder="City" type="text"
									name="city">
							</div>
						</div>

						<div class="mb-3">
							<input class="form-control" placeholder="State" type="text"
								name="state">
						</div>
						<div class="mb-3">
							<input class="form-control" placeholder="Country" type="text"
								name="country">
						</div>
						
						<div class="mb-3">
							<label for="uploadImages" class="form-label">Add Images</label> <input
								class="form-control" id="uploadImages" type="file" name="images"
								multiple>
						</div>
						
						<div class="mb-3">
							<label for="GoogleMapLink" class="form-label">Google Maps Iframe Source Link</label>
							<input class="form-control" placeholder="Google Map SRC Link" type="text" name="mapSrc">
						</div>

						<div class="mb-3">
							<label for="descriptionMessage" class="form-label">Description</label>
							<textarea class="form-control" id="descriptionMessage" name="description" rows="4"></textarea>
						</div>

						<div class="col-md-12 d-flex align-items-center">
							<div class="me-4">
								<label class="form-label me-2">Type</label>
								<div class="d-flex align-items-center">
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="type" id="flat" value="Flat"> <label
											class="form-check-label choice-text-color" for="Flat">Flat</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="type" id="land" value="Land"> <label
											class="form-check-label choice-text-color" for="land">Land</label>
									</div>
								</div>
							</div>

							<div class="me-4">
								<label class="form-label me-2">Rent or Sell</label>
								<div class="d-flex align-items-center">
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="rentOrSell" id="Rent" value="Rent">
										<label class="form-check-label choice-text-color" for="flat">Rent</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="rentOrSell" id="Sell" value="Sell">
										<label class="form-check-label choice-text-color" for="land">Sell</label>
									</div>
								</div>
							</div>

							<div class="ms-auto">
								<label class="form-label me-2">Is Available</label>
								<div class="d-flex align-items-center">
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="isAvailable" id="yes" value="Yes">
										<label class="form-check-label choice-text-color" for="yes">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" style="background-color: red;"
											type="radio" name="isAvailable" id="no" value="No"> <label
											class="form-check-label choice-text-color" for="no">No</label>
									</div>
								</div>
							</div>
						</div>

						<br />


					</div>
					<div class="image-section">
						<h1 class="card-title" style="font-size: 25px; font-weight: bold;">Sell
							Your Property</h1>

						<img style="margin-top: 19%;"
							src="./images/userProfile/sellProperty.png"
							alt="Placeholder Image"> <br> <br> 
						<input class="btn btn-primary btn-warning" style="width: 40%; font-weight: bolder;" type="submit" value="Sell IT">
					</div>

				</div>
			</form>
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

<br/><br/><br/>
	<div style="display: block">
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>


















