<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List" import="java.util.ArrayList"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Flights</title>
</head>
<body>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("map");
	if(flights!=null){
%>




<table border="5">
<tr>
	<th>Flight</th>
	<th>Source</th>
	<th>Destination</th>
	<th>Cost</th>
	<th>Date</th>
	
</tr>



<%
	for(String[] flight:flights){
%>

<tr>
<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
<td><%=flight[3]%></td>
<td><%=flight[4]%></td>
</tr>



<%
	}
	}
%>

</table>


</body>
</html>