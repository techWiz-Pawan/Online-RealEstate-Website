<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Teko:wght@300..700&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<title>Search Property</title>

<style>
.search-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 88vh;
    margin: 0;
}

.card {
    width: 70%;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    border-radius: 10px;
}

.card:hover {
    box-shadow: 0 4px 10px rgba(236, 73, 67, 0.5), 0 4px 10px rgba(241, 223, 223, 0.23);
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

.card-title {
    font-size: 25px;
    font-weight: bold;
}

.empty-body {
    background-image: url(./images/back_op.png) !important;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh;
    /* Adjusted to height for testing */
    margin: 0;
    padding: 0;
    background-color: rgba(0, 0, 0, 0.5);
}
</style>

</head>
<body class="empty-body">

    <div class="header-bg">
        <div class="wrap">
            <%@ include file="header.jsp"%>
        </div>
    </div>

    <div class="search-container">
        <div class="card text-center card-input-effect"
            style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9; border-radius: 25px;">
            <div class="card-body">
                <div class="form-section">
                    <h1 class="card-title">Search the Property</h1>
                    <p class="card-text">Please fill out the form below:</p>
                    <br />
                    <form name="serachForm" method="post" action="SearchPropertyController">
                        <div class="mb-3">
                            <input class="form-control" placeholder="Locality" type="text" name="locality">
                        </div>
                        <div class="mb-3">
                            <select class="form-control" name="rentOrSell">
                                <option value="default">Select an option</option>
                                <option value="Sell">Sell</option>
                                <option value="Rent">Rent</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <select class="form-control" name="propertyType">
                                <option value="default">Property Type</option>
                                <option value="Flat">Flat</option>
                                <option value="Land">Land</option>
                            </select>
                        </div>
                        <button class="btn btn-primary">Find Now</button>
                    </form>
                </div>
                <div class="image-section">
                    <img style="margin-top: 19%;" src="./images/userProfile/search_img.png" alt="Placeholder Image">
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <div style="display: block">
        <%@ include file="footer.jsp"%>
    </div>

</body>
</html>
