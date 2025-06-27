<%@ page language="java" import="java.util.List" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
      <h1>This Is a Home Page</h1>
     <%
       String name = (String) request.getAttribute("name");
       Integer id = (Integer) request.getAttribute("id");
       List<String> myf = (List<String>) request.getAttribute("friends");
     %>
     
     <h1>Name is <%=name %></h1>
     <h2>Name is <%=id %></h2>
     
     
        <h2>My Chati Bati Friends</h2>
     <%
  
     for(String s:myf){
    	 
    	
         %>
         
        
         <ul>
            <li><%=s %></li>
            
         </ul>
      <%} %>
    
     
</body>
</html>