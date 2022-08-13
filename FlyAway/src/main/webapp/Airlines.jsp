<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List" import="java.util.ArrayList"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
</head>
<body>
<%
	@SuppressWarnings("unchecked")
	List<String> flights=(List<String>)session.getAttribute("f");
	if(flights!=null){
%>




<table border="5">
<tr>
	<th>Airlines</th>
	
	
</tr>



<%
	for(String flight:flights){
%>

<tr>
<td><%=flight%></td>


</tr>


<%
	}
%>

</table>
<%
	}
	else{
	
%>
	<%
	}
	%>

</body>
</html>