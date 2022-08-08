<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update patient staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatepatientadmit" method="post"
				modelAttribute="updatePatientAdmits">
				<div>
					<label for="admitId">admitId</label>
					<div>
						<form:input path="admitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">staffId</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="admitDate">admitDate</label>
					<div>
						<form:input path="admitDate" readonly="true" />
					</div>

				</div>
				<div>
					<label for="dischargeDate">dischargeDate</label>
					<div>
						<form:input path="dischargeDate" readonly="true" />
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