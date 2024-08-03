<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

    <title>Site Maintenance</title>

    <style>
        html,
        .UC_body {
            padding: 0;
            margin: 0;
            width: 100%;
            height: 100%;
        }

        * {
            box-sizing: border-box;
        }

        .UC_body {
            text-align: center;
            padding: 0;
            background: #d6433b;
            color: #fff;
            font-family: Open Sans;
        }

        h1 {
            font-size: 50px;
            font-weight: 100;
            text-align: center;
        }

        .underConstruction-container {
            font-family: Open Sans;
            font-weight: 100;
            font-size: 20px;
            color: #fff;
            text-align: center;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        article {
            display: block;
            width: 700px;
            padding: 50px;
            margin: 0 auto;
        }

        a {
            color: #fff;
            font-weight: bold;
        }

        a:hover {
            text-decoration: none;
        }

        svg {
            width: 75px;
            margin-top: 6em;
        }
    </style>
</head>

<body class="UC_body">

    <div class="header-bg">
        <div class="wrap">
            <%@ include file="header.jsp" %>
        </div>
    </div>

    <div class="underConstruction-container">
        <article>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 202.24 202.24">
                <defs>
                    <style>.cls-1 { fill: #fff; }</style>
                </defs>
                <title>Asset 3</title>
                <g id="Layer_2" data-name="Layer 2">
                    <g id="Capa_1" data-name="Capa 1">
                        <path class="cls-1"
                            d="M101.12,0A101.12,101.12,0,1,0,202.24,101.12,101.12,101.12,0,0,0,101.12,0ZM159,148.76H43.28a11.57,11.57,0,0,1-10-17.34L91.09,31.16a11.57,11.57,0,0,1,20.06,0L169,131.43a11.57,11.57,0,0,1-10,17.34Z" />
                        <path class="cls-1"
                            d="M101.12,36.93h0L43.27,137.21H159L101.13,36.94Zm0,88.7a7.71,7.71,0,1,1,7.71-7.71A7.71,7.71,0,0,1,101.12,125.63Zm7.71-50.13a7.56,7.56,0,0,1-.11,1.3l-3.8,22.49a3.86,3.86,0,0,1-7.61,0l-3.8-22.49a8,8,0,0,1-.11-1.3,7.71,7.71,0,1,1,15.43,0Z" />
                    </g>
                </g>
            </svg>
            <h1>We’ll be back soon!</h1>
            <div>
                <p>Sorry for the inconvenience. We’re performing some maintenance at the moment. If you need to you can always follow us on <a href="http://www.twitter.com/">Twitter</a> for updates, otherwise we’ll be back up shortly!</p>
                <p>— The <span style="font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif;">PrimePulse</span> Team</p>
            </div>
        </article>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>

    

</body>

</html>
