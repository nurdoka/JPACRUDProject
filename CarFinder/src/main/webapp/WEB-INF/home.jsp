<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Finder</title>
</head>
<body>
	<div class="container text-center">
		<h1>Car Finder</h1>

		<form action="getCar.do" method="GET">
			Car ID: <input type="text" name="carId" /> <input type="submit"
				value="Show Car" />
		</form>

	</div>
</body>
</html>