<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>admitId</th>
					<th>staffId</th>
					<th>aadharNo</th>
					<th>centreId</th>
					<th>admitDate</th>
					<th>dischargeDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${fetchAllCentreAdmitById}">
					<tr>
						<td>${cen.admitId}</td>
						<td>${cen.staffId}</td>
						<td>${cen.aadharNo}</td>
						<td>${cen.centreId}</td>
						<td>${cen.admitDate}</td>
						<td>${cen.dischargeDate}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>


</html>