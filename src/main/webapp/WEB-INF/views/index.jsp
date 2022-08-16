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
body {
	background-image:
		url("https://www.domo.com/covid19/images/product-google-og-coronavirus-tracker.jpg");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	font-family: ui-monospace;
	color: white;
	text-align: left;
}

.navbar {
	overflow: hidden;
	/*     background-color: #38fca4; */
}

.navbar a {
	float: left;
	font-size: 16px;
	/* color: white; */
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 20px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
}

a:hover, .dropdown:hover .dropbtn {
	/*     background-color: #fff;
 */
	
}
h1{
   text-align: center;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

</style>
</head>
<body>
	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Staff<em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/home/ForAllTables">Add Details</a> <a
					href="/home/ForViewList">View Details</a>
			</div>
		</div>
	</div>
</body>
</html>