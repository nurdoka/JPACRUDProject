<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a car</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<h1>Enter car details</h1>
	<div>
		<form action="addCar.do" method="GET">
			<div class="form-group">
				Car Make: <input type="text" name="make" />
			</div>
			<div class="form-group">
				Car Model: <input type="text" name="model"  />
			</div>
			<div class="form-group">
				Car Year: <input type="text" name="year" />
			</div>
			<div class="form-group">
				Car Color: <input type="text" name="color"  />
			</div>
			<div class="form-group">
				Car Body: <input type="text" name="body"  />
			</div>
			 <input type="submit" value="Add Car" />
		</form>
	</div>
</body>
</html>