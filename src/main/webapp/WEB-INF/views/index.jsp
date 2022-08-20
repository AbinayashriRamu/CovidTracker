<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Covid Tracker</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/index.css"%>
</style>
</head>
<body>
	<h1>
		<u>COVID TRACKER 
	</h1>
	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Staff<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/home/ForAllTables">Add Details</a>
			</div>
		</div>
		<div>
			<div>
				<a id="log" href="/home/ForViewList">View Details</a>
			</div>
		</div>
</body>
</html>