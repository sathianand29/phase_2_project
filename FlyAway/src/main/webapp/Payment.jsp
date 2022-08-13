<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
<form method=post action="PaymentConfirmation.jsp">
You have to pay Rs.<%=session.getAttribute("cost") %> <br>
To proceed please confirm the payment
<% String firstn = request.getParameter("fname");
session.setAttribute("fname",firstn);
String lastn = request.getParameter("lname");
session.setAttribute("lname",lastn);
String sour=session.getAttribute("s").toString();
session.setAttribute("source",sour);
String dest=session.getAttribute("d").toString();
session.setAttribute("destination",dest);
String dt=session.getAttribute("date").toString();
session.setAttribute("date",dt);
String price=session.getAttribute("rate").toString();
session.setAttribute("rate",price);
String no=session.getAttribute("n").toString();
session.setAttribute("nop",no);
String tot=session.getAttribute("t").toString();
session.setAttribute("total",tot);

%>
<br>
<input type="submit" value="Pay">

</form>
</body>
</html>