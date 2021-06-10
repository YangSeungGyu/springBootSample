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
			<th>smaple01</th>
			<th>smaple02</th>
			<th>smaple03</th>
		</tr>
		<tr>
			<td><c:import url="/chart/smaple01"/></td>
			<td><c:import url="/chart/smaple02"/></td>
			<td><c:import url="/chart/smaple03"/></td>
		</tr>
		
		<tr>
			<th>smaple04</th>
			<th>smaple05</th>
			<th>smaple06</th>
		</tr>
		<tr>
			<td><c:import url="/chart/smaple04"/></td>
			<td><c:import url="/chart/smaple05"/></td>
			<td><c:import url="/chart/smaple06"/></td>
		</tr>
	</table>

</body>
</html>