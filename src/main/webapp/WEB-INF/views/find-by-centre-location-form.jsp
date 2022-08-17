<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #777;
	padding: 10px;
	border-color: #cc0033;
	color:black
}

td {
	color: black;
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1601662528567-526cd06f6582?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGxhaW4lMjBjb2xvdXJ8ZW58MHx8MHx8&w=1000&q=80");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1
{
align-items: center;
color:black;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Location</h1>
	<div id="table root">
	<div align="center"> 
		<table border="2">
		<caption></caption>
			<thead>
				<tr>
					<th>CentreId</th>
					<th>CentreName</th>
					<th>pinCode</th>
					<th>ContactPersonName</th>
					<th>ContactPersonPhoneNo</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${fetchAllCentreloctionById}">
					<tr>
						<td>${cen.centreId}</td>
						<td>${cen.centreName}</td>
						<td>${cen.pinCode}</td>
						<td>${cen.contactPersonName}</td>
						<td>${cen.contactPersonPhoneNo}</td>
				</c:forEach>
			</tbody>
		</table>
		<li><a href="/home/ForViewList">Back</a>
	</div>
	</div>

</body>
</html>