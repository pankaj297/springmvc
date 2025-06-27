<%@ page language="java" import="java.util.List" import="java.time.LocalDateTime" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Page</title>
</head>
<body>
    <h1>This is Help Page....!</h1>
    
    <h1>Name: ${name}</h1>
    <h2>Roll Number: ${rollnumber}</h2>
    <h3>Current Time: ${time}</h3>
    
    <hr>

    <h2>Number List:</h2>
   <ul>
      <c:forEach var="n" items="${num}">
        <li>${n}</li>
      </c:forEach>
    </ul>

</body>
</html>
