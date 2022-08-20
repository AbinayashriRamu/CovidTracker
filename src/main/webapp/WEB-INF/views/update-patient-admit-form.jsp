<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
<%@include file="/WEB-INF/css/update-patient-admit-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Update patient staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatepatientadmit" method="post"
				modelAttribute="updatePatientAdmits">
				<div>
					<label for="admitId">AdmitId</label>
					<div>
						<form:input path="admitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber"  />
					</div>
				</div>
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="admitDate">AdmitDate</label>
					<div>
						<form:input path="admitDate" />
					</div>

				</div>
				<div>
					<label for="dischargeDate">DischargeDate</label>
					<div>
						<form:input path="dischargeDate" type="date"/>
					</div>
				</div>
				<div>
					<form:button>Update Centre Staff</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>