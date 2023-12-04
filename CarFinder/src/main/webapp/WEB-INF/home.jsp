<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Finder</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

</head>
<body>
	<div class="container text-center">
		<h1>CAR FINDER</h1>

		<form action="getCar.do" method="GET">
			Car ID: <input type="text" name="carId" /> <input type="submit"
				value="Show Car" />
		</form>
	</div>

	<br>
	<button onclick="window.location='addCarForm.do'">Add a New
		Car</button>
	<br>
<div class="container mt-5">
	<h2>List of All Cars</h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr class="text-center">
				<th>Make</th>
				<th>Model</th>
				<th>Year</th>
				<th>Color</th>
				<th>Body</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="car" items="${cars}">

				<tr class="text-center"
					onclick="window.location='getCar.do?carId=${car.id }'">
					<td>${car.make }</td>
					<td>${car.model }</td>
					<td>${car.year}</td>
					<td>${car.color}</td>
					<td>${car.body}</td>
				</tr>

			</c:forEach>

		</tbody>
	</table>
</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>