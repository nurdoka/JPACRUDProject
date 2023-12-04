<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a car</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<h1>Enter car details to update</h1>
	<div>
		<form action="updateCar.do" method="GET">
		<input type="hidden" name="carId" value="${param.carId}">
			Car Make:  <input type="text" name="make" value="${car.make }"/> 
			Car Model: <input type="text" name="model" value="${car.model }"/> 
			Car Year:  <input type="text" name="year" value="${car.year }"/> 
			Car Color: <input type="text" name="color" value="${car.color }"/> 
			Car Body:  <input type="text" name="body" value="${car.body }"/> 
					   <input type="submit" value="Update Car" />
		</form>
	</div>
</body>
</html>