<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		COVID TRACKER
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
		</div>
		<div class="row">
		<div class="column" style="background-color:red">
		        <table>
		        <caption></caption>
		        <tr>
		        <th>Positive Cases</th>
		        </tr>
				<tr>
				<td>
				<c:out value="${pcount}"></c:out>
		         </td>
		         </tr>
		         </table>
		 </div>
		     <div class="column" style="background-color:orange">
		            <table>
		            <caption></caption>
		            <tr>
		            <th>Dead Cases</th>
		            </tr>
		            <tr>
		            <td>
		            <c:out value="${dcount}"></c:out>
		            </td>
		            </tr>
		        </table>
		    </div>
		
		    <div class="column" style="background-color:yellow">
		          <table>
		          <caption></caption>
		           <tr>
		           <th>Recovery</th>
		           </tr>
		           <tr>
		           <td>
		            <c:out value="${rcount}"></c:out>
		            </td>
		            </tr>
		            </table>
		    </div>
		 </div>
		
</body>
</html>