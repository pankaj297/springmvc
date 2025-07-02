<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Page</title>
</head>
<body>
   
   <h1>Hello, I am Back..!</h1>
   <h2>My Name is  : ${name}</h2>
   <h3>My RollNumber is : ${rollnumber}</h3>
   <h3>Date And Time : ${time}</h3>
   <hr>
   <h3>Student Id : ${id}</h3>
   
   <!--JSTL   -->
   <c:forEach var="item" items="${id}">
       
       <!-- first way  -->
     <%--  <h3>${item}</h3>  --%>
      
      <!--second way -->
     <h3> <c:out value="${item}"></c:out></h3> 
        
   </c:forEach>

</body>
</html>