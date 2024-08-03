<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Teko:wght@300..700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/galleryStyle.css" type="text/css" media="all" />

    <title>Contact Us</title>

    <style>
        .contact-body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 85vh;
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

    <div class="contact-body">
        <div class="card text-center">
            <div class="card-body card-input-effect"
                style="background-color: rgb(23, 3, 33); color: yellow; opacity: 0.9;">
                <div class="form-section">
                    <h1 class="card-title">Contact Us</h1>
                    <p class="card-text">Please fill this form in a decent manner</p>

                    <form method="post" action="ViewMessageController">
                        <div class="mb-3">
                            <label for="exampleInputName1" class="form-label">Name</label>
                            <input type="text" class="form-control" id="exampleInputName1" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="email"
                                aria-describedby="emailHelp">
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
    <div style="margin: 100px 0;"></div>

    <div style="display: block">
        <%@ include file="footer.jsp"%>
    </div>

</body>
</html>
