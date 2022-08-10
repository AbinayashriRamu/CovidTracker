<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findByStaffId">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffName">StaffId</label>
					<div>
						<form:input path="staffName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffRole</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffRole">StaffRole</label>
					<div>
						<form:input path="staffRole" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffGender">StaffGender</label>
					<div>
						<form:input path="staffGender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffDateOfBirth">StaffDateOfBirth</label>
					<div>
						<form:input path="staffDateOfBirth" readonly="true" />
					</div>
				</div>


			</form:form>
		</div>
	</div>

	<div id="table root">

		<table>
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
	</div>

</body>
</html>