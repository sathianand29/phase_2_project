<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList" import="java.util.List" import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
</head>
<body>

<table border=5>
            <thead>
                <tr>
                    <th>Airline</th>
                    <th>Cost</th>
                    
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${details}" var="x">
                <tr>
                    <td>${x.key}</td>
                    <td>${x.value}</td>
                    
                </tr>
                </c:forEach>   
            </tbody>
        </table>
        
        <form method=post action="AirlineValidation">
Enter Airline: <input type="text" name="airline" required><br/>
No. of Persons: <input type="number" name="nop" required><br />

<input type="submit" value="Submit">


</form>
</body>
</html>