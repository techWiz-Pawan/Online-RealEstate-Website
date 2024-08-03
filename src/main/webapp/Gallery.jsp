<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Teko:wght@300..700&display=swap" rel="stylesheet" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/galleryStyle.css" type="text/css" media="all" />

    <title>Gallery</title>

    <style>
        .banner {
            background-image: url('./images/Gallery/font_banner.png');
            background-size: cover;
            width: 100%;
            height: 50vh;
        }

        .container-gallery {
            display: none;
        }

        .container-gallery.active {
            display: block;
        }
    </style>

</head>

<body>

    <div class="header-bg">
        <div class="wrap">
            <%@ include file="header.jsp" %>
        </div>
    </div>

    <div class="banner">
        <div class="banner-text">
            <h1 style="color: rgb(241, 222, 74)">Gallery</h1>
            <p>
                <a href="index.jsp">Back to Home</a> - Gallery
            </p>
        </div>
    </div>

    <div class="galery-tab">
        <h5>VISUAL DELIGHT</h5>
        <h1>Dive into the Gallery Experience</h1>
        <div class="container">
            <div class="row">
                <div class="col tabs active" data-tab="tab1" onclick="showGallery('tab1')">
                    <img src="./images/Gallery/tab_img1.jpg" alt="tab 1 Image" />
                    <h5 style="display: inline-block; margin-top: 0; padding-left: 15px">Home</h5>
                </div>
                <div class="col tabs" data-tab="tab2" onclick="showGallery('tab2')">
                    <img src="./images/Gallery/tab_img2.jpg" alt="tab 2 Image" />
                    <h5 style="display: inline-block; margin-top: 0; padding-left: 15px">Apartments</h5>
                </div>
                <div class="col tabs" data-tab="tab3" onclick="showGallery('tab3')">
                    <img src="./images/Gallery/tab_img3.jpg" alt="tab 3 Image" />
                    <h5 style="display: inline-block; margin-top: 0; padding-left: 15px">Mansion</h5>
                </div>
                <div class="col tabs" data-tab="tab4" onclick="showGallery('tab4')">
                    <img src="./images/Gallery/tab_img4.jpg" alt="tab 4 Image" />
                    <h5 style="display: inline-block; margin-top: 0; padding-left: 15px">Commercial</h5>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Gallery 1 [Home] -->
        <div class="container-gallery" id="tab1" data-tab-content="tab1">
            <div class="card" style="border: none !important">
                <div class="row Gallery-container" style="margin: 5% 5%">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/h_gal7.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
                        <img src="./images/Gallery/h_gal8.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Wintry Mountain Landscape" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/h_gal9.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/h_gal10.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/a_gal14.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/h_gal12.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Gallery 2 [Apartments] -->
        <div class="container-gallery" id="tab2" data-tab-content="tab2">
            <div class="card" style="border: none !important">
                <div class="row Gallery-container" style="margin: 5% 5%">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/a_gal13.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
                        <img src="./images/Gallery/a_gal14.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Wintry Mountain Landscape" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/a_gal15.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/a_gal16.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/a_gal17.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/a_gal18.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Gallery 3 [Mansion] -->
        <div class="container-gallery" id="tab3" data-tab-content="tab3">
            <div class="card" style="border: none !important">
                <div class="row Gallery-container" style="margin: 5% 5%">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/m_gal19.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
                        <img src="./images/Gallery/m_gal20.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Wintry Mountain Landscape" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/m_gal21.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/h_gal7.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/m_gal23.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/a_gal14.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Gallery 4 [Commercial] -->
        <div class="container-gallery" id="tab4" data-tab-content="tab4">
            <div class="card" style="border: none !important">
                <div class="row Gallery-container" style="margin: 5% 5%">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/c_gal24.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
                        <img src="./images/Gallery/h_gal12.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Wintry Mountain Landscape" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/h_gal8.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/c_gal25.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                        <img src="./images/Gallery/c_gal27.webp" style="height: 46.5%;" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <img src="./images/Gallery/h_gal9.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />
                        <img src="./images/Gallery/h_gal3.webp" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <script>
        function showGallery(tabId) {
            var tabs = document.querySelectorAll('.tabs');
            var galleries = document.querySelectorAll('.container-gallery');

            tabs.forEach(function (tab) {
                tab.classList.remove('active');
                if (tab.getAttribute('data-tab') === tabId) {
                    tab.classList.add('active');
                }
            });

            galleries.forEach(function (gallery) {
                gallery.classList.remove('active');
                if (gallery.getAttribute('id') === tabId) {
                    gallery.classList.add('active');
                }
            });
        }

        // Show the first tab by default
        document.addEventListener('DOMContentLoaded', function () {
            showGallery('tab1');
        });
    </script>

    <div style="display: block">
        <%@ include file="footer.jsp" %>
    </div>

</body>

</html>
