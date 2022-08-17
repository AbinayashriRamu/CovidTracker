<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	color: blackborder="
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

h1 {
	align-items: center;
	color: black;
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Admit Detail</h1>
	<div id="table root">
		<div align="center">

			<table border="2">
				<caption></caption>
				<thead>
					<tr>
						<th>AdmitId</th>
						<th>StaffId</th>
						<th>AadharNumber</th>
						<th>CentreId</th>
						<th>AdmitDate</th>
						<th>DischargeDate</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cen" items="${fetchAllCentreAdmitById}">
						<tr>
							<td>${cen.admitId}</td>
							<td>${cen.staffId}</td>
							<td>${cen.aadharNumber}</td>
							<td>${cen.centreId}</td>
							<td>${cen.admitDate}</td>
							<td>${cen.dischargeDate}</td>
					</c:forEach>
				</tbody>
			</table>

			<li><a href="/home/ForViewList">Back</a>
		</div>
	</div>

</body>


</html>