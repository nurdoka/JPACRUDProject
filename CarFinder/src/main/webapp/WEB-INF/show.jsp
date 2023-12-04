<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<a href="home.do"> HOME </a>
	<div class="text-center">
	<h1>Car Details</h1>
	
		<h3>${car.make}</h3>
		<h5>Model: ${car.model}</h5>
		<h5>Year: ${car.year}</h5>
		<h5>Color: ${car.color}</h5>
		<h5>Body: ${car.body }</h5>
	</div>
	
		<div class="container mt-5">
		<button class="btn btn-primary"
			onclick="window.location='updateCarForm.do?carId=${car.id }'">Update
			Car</button>
	</div>
	
	<div class="container mt-5">
		<button class="btn btn-danger"
			onclick="window.location='deleteCar.do?carId=${car.id }'">Delete
			Car</button>
	</div>

</body>
</html>