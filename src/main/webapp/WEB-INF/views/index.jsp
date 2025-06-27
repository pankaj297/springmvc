<%@ page language="java" import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
      <h1>This Is a Home Page</h1>
   
     <h1>Name is ${name} </h1>
     <h2>Name is ${id }</h2>
     
       
    <h2>My Chati Bati Friends</h2>
    <ul>
    
        <c:forEach var="friend" items="${friends}">
        
           <li>${friend}</li>
        
        </c:forEach>
    </ul>
    
     
</body>
</html>