<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>Registration Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
 
  </head>
  <body style="background-color: #f0f8ff;">
    <h1>Hello, world!</h1>
    
    <div class="container mt-4">
    <h3 class="text-center">${head}</h3>

    <form action="submitForm" method="post">
    
    
        <div class="mb-2">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control" required />
        </div>
        
        <div class="mb-2">
            <label class="form-label">Name</label>
            <input type="text" name="name" class="form-control" required />
        </div>

   

        <div class="mb-2">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control" required />
        </div>

        <div class="mb-2">
            <label class="form-label">Gender</label><br/>
            <input type="radio" name="gender" value="Male" /> Male
            <input type="radio" name="gender" value="Female" class="ms-3" /> Female
        </div>

        <div class="mb-2">
            <label class="form-label">Country</label>
            <select name="country" class="form-select">
                <option value="">--Select--</option>
                <option value="India">India</option>
                <option value="USA">USA</option>
                <option value="UK">UK</option>
            </select>
        </div>

        <div class="form-check mb-3">
            <input type="checkbox" name="agreed" class="form-check-input" />
            <label class="form-check-label">Agree to terms</label>
        </div>

       <div class="container text-center">
          <button type="submit" class="btn btn-primary">Submit</button>
       </div>
      
    </form>
</div>
  </body>
</html>