<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<form method=post action="PersonDetails">
Selected Airline: <%=session.getAttribute("airline") %><br/>
Enter Firstname: <input type="text" name="fname" required><br/>
Enter Lastname: <input type="text" name="lname" required><br/>
Enter DOB: <input type="date" name="dob" required><br/>
Enter Gender: <input type="radio" name="gender" value="male"> Male <input type="radio" name="gender" value="female"> Female <input type="radio" name="gender" value="other"> Other<br>
Enter Contact Number: <input type="number" name="contact" required><br/>
Enter EmailID: <input type="text" name="mail" required><br/>
<% String str = request.getParameter("airline");

session.setAttribute("airline",str);
String str1 = request.getParameter("nop");
session.setAttribute("nop",str1);
%>
<input type="submit" value="Submit">
</form>
</body>
</html>