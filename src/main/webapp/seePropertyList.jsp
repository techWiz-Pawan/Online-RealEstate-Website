<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
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
    <title>Property List</title>
</head>
<body>

<div class="header-bg">
    <div class="wrap">
        <%@ include file="header.jsp"%>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <h2 style="font-size: 50px;">Property List</h2><br/><br/>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Property Name</th>
                    <th>Rent or Sell</th>
                    <th>Flat or Land</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <% if (request.getAttribute("propertyList") != null) {
                    List<com.easy.project.model.Property> propertyList = (List<com.easy.project.model.Property>) request.getAttribute("propertyList");
                    for (com.easy.project.model.Property property : propertyList) { %>
                        <tr>
                            <td><%= property.getPropertyId() %></td>
                            <td><%= property.getPropertyName() %></td>
                            <td><%= property.getRentOrSell() %></td>
                            <td><%= property.getPropertyType() %></td>
                            <td>
                                <a href="PropertyDetailsServlet?propertyId=<%= property.getPropertyId() %>"
                                   class="btn btn-primary btn-sm">View</a>
                            </td>
                        </tr>
                    <% }
                } else { %>
                    <tr>
                        <td colspan="5">No properties found matching your criteria.</td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<div style="margin: 100px 0;"></div>
<br/><br/><br/><br/>
<div style="display: block">
    <%@ include file="footer.jsp"%>
</div>

</body>
</html>
