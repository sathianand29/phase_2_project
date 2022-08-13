<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Confirmation</title>
</head>
<body>
Payment is successfully completed! <br>
<table border=5>
<tr>
<th>Name</th>
<th>Date</th>
<th>Source</th>
<th>Destination</th>
<th>Tickets</th>
<th>Price</th>
<th>Total</th>
</tr>
<tr>
<td><%=session.getAttribute("fname") %> <%=session.getAttribute("lname") %></td>
<td><%=session.getAttribute("date") %></td>
<td><%=session.getAttribute("source") %> </td>
<td><%=session.getAttribute("destination") %></td>
<td><%=session.getAttribute("nop") %> </td>
<td><%=session.getAttribute("rate") %></td>
<td><%=session.getAttribute("total") %></td>
</tr>
</table>
<br>
<a href="index.jsp">Click here to redirect to the Home Page</a>

</body>
</html>