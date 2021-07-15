<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
			
	<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th><a href='/chart/smaple01'>smaple01</a></th>
			<th><a href='/chart/smaple02'>smaple02</a></th>
			<th><a href='/chart/smaple03'>smaple03</a></th>
		</tr>
		<tr>
			<td><c:import url="/chart/smaple01"/></td>
			<td><c:import url="/chart/smaple02"/></td>
			<td><c:import url="/chart/smaple03"/></td>
		</tr>
		
		<tr>
			<th><a href='/chart/smaple04'>smaple04</a></th>
			<th><a href='/chart/smaple05'>smaple05</a></th>
			<th><a href='/chart/smaple06'>smaple06</a></th>
		</tr>
		<tr>
			<td><c:import url="/chart/smaple04"/></td>
			<td><c:import url="/chart/smaple05"/></td>
			<td><c:import url="/chart/smaple06"/></td>
		</tr>
		<tr>
			<th><a href='/chart/smaple07'>smaple07</a></th>
			<th><a href='/chart/smaple08'>smaple08</a></th>
			<th><a href='/chart/smaple09'>smaple09</a></th>
		</tr>
		<tr>
			<td><c:import url="/chart/smaple07"/></td>
			<td><c:import url="/chart/smaple08"/></td>
			<td><c:import url="/chart/smaple09"/></td>
		</tr>
	</table>

</body>
</html>