<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
    content="width=device-width, initial-scale=1, maximum-scale=1">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:wdth@75..100&display=swap"
    rel="stylesheet">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
    href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">

<script>
    function togglePassword(inputId) {
        const inputField = document.getElementById(inputId);
        const passwordToggle = inputField.nextElementSibling;

        if (inputField.type === "password") {
            inputField.type = "text";
            passwordToggle.innerHTML = '<span class="material-icons">visibility_off</span>';
        } else {
            inputField.type = "password";
            passwordToggle.innerHTML = '<span class="material-icons">visibility</span>';
        }
    }
</script>

<style>
body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.navbar {
    z-index: 99999;
    background-color: brown !important;
    height: 85px;
}

.custom-card {
    width: 1150px;
    height: 670px;
    opacity: 1; /* Set opacity to 1 for full visibility */
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

.custom-card input:focus {
    border-color: rgb(28, 69, 2);
    background-color: #ceef68;
}

.card:hover {
    box-shadow: 0 4px 10px rgba(236, 73, 67, 0.5), 0 4px 10px    rgba(241, 223, 223, 0.23);
}

.password-toggle:hover{
    background-color: red;
}

.empty-body {
    background-image: url(./images/back_op.png) !important;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh; /* Adjusted to height for testing */
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

    <div class="d-flex justify-content-center align-items-center"
        style="padding: 20px;">
        <div class="card mb-3 custom-card"
            style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9;">
            <div class="row g-0">
                <div class="col-md-6">
                    <div class="card-body">
                        <h5 class="card-title text-center">Update Your Profile</h5>
                        <h4><%=(request.getAttribute("errorMessage") != null ? (String) request.getAttribute("errorMessage") : "")%></h4>
                        <form name="signup" method="post" action="UpdateUserProfile">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label> 
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label> 
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="password" class="form-label">Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
                                        <button class="btn password-toggle btn-outline-light" type="button" onclick="togglePassword('password')">
                                            <span class="material-icons" style="color: red">visibility</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password">
                                        <button class="btn password-toggle btn-outline-light" type="button" onclick="togglePassword('confirmPassword')">
                                            <span class="material-icons" style="color: red">visibility</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="age" class="form-label">Age</label> 
                                    <input type="number" class="form-control" id="age" name="age" placeholder="Enter your age">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Gender</label>
                                    <div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" style="background-color: red;" type="radio" name="gender" id="male" value="male"> 
                                            <label class="form-check-label" style="color: aliceblue;" for="male">Male</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" style="background-color: red;" type="radio" name="gender" id="female" value="female"> 
                                            <label class="form-check-label" style="color: aliceblue;" for="female">Female</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" style="background-color: red;" type="radio" name="gender" id="other" value="other"> 
                                            <label class="form-check-label" style="color: aliceblue;" for="other">Other</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="mobile" class="form-label">Mobile</label> 
                                <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <textarea class="form-control" id="address" name="address" rows="3" placeholder="Enter your address"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 update-img">
                    <img style="height: 80%; width: 90%;"
                        src="./images/userProfile/updateProfile.jpg"
                        class="img-fluid rounded-start" alt="...">
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
