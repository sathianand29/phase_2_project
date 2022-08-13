<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway Portal</title>
</head>
<body>
<form method=post action="Data">
Enter Source: <input type="text" name="source" required><br/>
Enter Destination: <input type="text" name="destination" required><br/>
Enter Date of booking: <input type="date" name="date" value="01-01-2000" required><br/>

<input type="submit" value="Submit">
</form>
<br>
<a href="Login.jsp">Admin Portal</a>
</body>
</html>