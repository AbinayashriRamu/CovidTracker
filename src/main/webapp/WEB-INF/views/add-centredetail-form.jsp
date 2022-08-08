<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Centre</title>
<style>
body {
	background-image:
		url(https://dublingazette.com/wp-content/uploads/2021/05/coronavirus-4914026_1920-scaled.jpg);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table, th, td {table , th, td { border:1pxsolidblack;
	border-collapse: collapse;
}

}
th {
	background-color: #04AA6D;
	color: white;
}

td {
	backgoung-colour: #c4f5dc;
}

.label-size {
	font-size: 28px;
}

.text-box {
	height: 28px;
	width: 237px;
	border-radius: 3px;
	font-size: 15px;
}

.button {
	margin-top: 20px;
	width: 100px;
	height: 38px;
	font-size: 15px;
	background-color: blue;
	border: 2px solid blue;
	border-radius: 5px;
	color: white;
}
.label-text{
font-size: 21px;
    color: wheat;}
</style>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addcentre" method="post" style="margin-left: 20px;"
				modelAttribute="addcentres">
				<div>
				<h1 style="font-size: 40px;color: white;">Centre Details</h1>
				<div style="margin: 10px 0px 10px 0px;">
					<label for="centreId" class="lable-size label-text">Centre Id</label>
					<div>
						<form:input path="centreId" class="text-box" />
					</div>
				</div>
				<div style="margin: 10px 0px 10px 0px;">
					<label for="centreName" class="lable-size label-text">Centre Name</label>
					<div>
						<form:input path="centreName" class="text-box" />
					</div>
				</div>
				<div style="margin: 10px 0px 10px 0px;">
					<label for="pinCode" class="lable-size label-text">PinCode</label>
					<div>
						<form:input path="pinCode" class="text-box"/>
					</div>
				</div>
				<div style="margin: 10px 0px 10px 0px;">
					<label for="contactPersonName" class="lable-size label-text">Contact Person Name</label>
					<div>
						<form:input path="contactPersonName" class="text-box"/>
					</div>
				</div>
				<div style="margin: 10px 0px 10px 0px;">
					<label for="contactPersonPhoneNo" class="lable-size label-text">Contact Person PhoneNo</label>
					<div>
						<form:input path="contactPersonPhoneNo" class="text-box"/>
					</div>
				</div>
				<div>
					<button class="button">Add New</button>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
