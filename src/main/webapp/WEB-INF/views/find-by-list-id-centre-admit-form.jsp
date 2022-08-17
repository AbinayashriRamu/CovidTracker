<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	color: black
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
	background-color: #E7E9EB;
}

h1 {
	align-items: center;
	color: black;
}

.grid-container {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 25px;
	background-color: blue;
	padding: 10px;
}

.grid-container>div {
	background-color: rgba(255, 255, 255, 0.8);
	text-align: center;
	padding: 25px 0;
	font-size: 20px;
}
</style>


<meta charset="ISO-8859-1">
<title>centre admit</title>
</head>
<body>

	<div class="grid-container">

		<div class="root">
			<div id="form">
				<h1>Centre Detail</h1>
				<form:form action="" method="post" modelAttribute="findByCentreId">
					<div>
						<label for="centreId">CentreId</label>
						<div>
							<form:input path="centreId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="centreName">CentreName</label>
						<div>
							<form:input path="centreName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="pinCode">PinCode</label>
						<div>
							<form:input path="pinCode" readonly="true" />
						</div>
					</div>
					<div>
						<label for="contactPersonName">Contact Person Name</label>
						<div>
							<form:input path="contactPersonName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="contactPersonPhoneNo">Contact Person PhoneN
							umber</label>
						<div>
							<form:input path="contactPersonPhoneNo" readonly="true" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div id="table root">
			<h1>Admit Detail</h1>
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
						<c:forEach var="cen" items="${fetchadmitDetail}">
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