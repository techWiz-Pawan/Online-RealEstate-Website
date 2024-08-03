<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Base64"%>
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
<title>All Properties</title>
</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<%@ include file="header.jsp"%>
		</div>
	</div>

	<div class="container">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<%
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/realEstateDB?useSSL=false", "root", "root");
				String sql = "SELECT propertyId, imageData, propertyName, price, area, bedrooms, bathrooms FROM propertyDetails";
				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();

				while (rs.next()) {
					String propertyName = rs.getString("propertyName");
					double price = rs.getDouble("price");
					double area = rs.getDouble("area");
					int bedrooms = rs.getInt("bedrooms");
					int bathrooms = rs.getInt("bathrooms");
					byte[] imageData = rs.getBytes("imageData");
					String base64Image = Base64.getEncoder().encodeToString(imageData);
			%>
			<div class="col">
				<a
					href="PropertyDetailsServlet?propertyId=<%=rs.getInt("propertyId")%>"
					data-property-id="<%=rs.getInt("propertyId")%>"
					onclick="logPropertyId(event)">
					<div class="card">
						<img src="data:image/jpeg;base64,<%=base64Image%>"
							class="card-img-top" alt="<%=propertyName%>">
						<div class="card-body">
							<h5 class="card-title"><%=propertyName%></h5>
							<div
								class="house-detail d-flex justify-content-between align-item-center"
								style="padding-top: 5%;">
								<h4>
									₹
									<%=price%>
									<%
									if (price < 10000) {
									%>/mo<%
									}
									%>
								</h4>
								<div class="house-features d-flex">
									<p>
										<i class="material-icons"
											style="color: rgb(187, 187, 71); font-size: 1.5rem;">area_chart</i>
										<%=area%></p>
									&nbsp;&nbsp;
									<p>
										<i class="material-icons"
											style="color: rgb(187, 187, 71); font-size: 1.5rem;">bed</i>
										<%=bedrooms%></p>
									&nbsp;&nbsp;
									<p>
										<i class="material-icons"
											style="color: rgb(187, 187, 71); font-size: 1.5rem;">bathtub</i>
										<%=bathrooms%></p>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>
			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			} finally {
			if (rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (stmt != null)
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
			%>
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

	<br />
	<br />
	<br />
	<div style="display: block">
		<%@ include file="footer.jsp"%>
	</div>

	<script>
		function logPropertyId(event) {
			event.preventDefault();
			const propertyId = event.currentTarget
					.getAttribute('data-property-id');
			console.log('propertyId:', propertyId);
			window.location.href = event.currentTarget.href;
		}
	</script>
</body>
</html>
