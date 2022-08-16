<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.btn {
   
	background-color: #ddd;
	border: none;
	color: black;
	padding: 16px 32px;
	text-align: center;
	font-size: 16px;
	margin: 4px 2px;
	transition: 0.3s;
	align-item: center;
}
body {
	background-image:
		url("https://www.tata.com/content/dam/tata/images/newsroom/covid19/desktop/tata2_covid19_banner_desktop_1920x1080.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-color: #080710;
}


h1{
text-align: center;
}

h2{
text-align: center;
}

.btn:hover {
	background-color: #3e8e41;
	color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>Registered Sucessfully</title>
</head>
<body>
	<h1> Registered successfully! </h1>
	<h2>
		<a href="/home/ForAllTables">
			<button class="btn">Back</button></a>
	</h2>
</body>
</html>