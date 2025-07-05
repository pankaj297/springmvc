<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Result</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <h3 class="mb-4">Submitted Details</h3>
     <h4 class="text-success" > ${msg}</h4>
    <table class="table table-bordered table-striped">
        <tr>
            <th>Name</th>
            <td>${user.name}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${user.email}</td>
        </tr>
        <tr>
            <th>Password</th>
            <td>${user.password}</td>
        </tr>
        <tr>
            <th>Gender</th>
            <td>${user.gender}</td>
        </tr>
        <tr>
            <th>Country</th>
            <td>${user.country}</td>
        </tr>
        <tr>
            <th>Agreed</th>
            <td>
                <c:choose>
                    <c:when test="${user.agreed eq 'No'}">No</c:when>
                    <c:otherwise>Yes</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</div>
</body>
</html>