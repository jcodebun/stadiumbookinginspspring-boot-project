<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stadium List</title>
</head>
<body >

<div class="container" >

<h2 style="padding: 30px">Stadium List</h2>
<%@include file="businessMessage.jsp" %>


<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Stadium Name</th>
      <th scope="col">Number of Seat</th>   
      <th scope="col">Price</th>  
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.stadiumName}</td>
      <td>${li.numberOfSeat}</td>
      <td>${li.ticketPrice}</td>

      <td>     
      <c:choose>
      <c:when test="${sessionScope.user.userRole == 'Admin'}">
      <a href="${pageContext.request.contextPath}/stadiumEdit?id=${li.id}">Edit</a>
      <a href="${pageContext.request.contextPath}/stadiumDelete?id=${li.id}">Delete</a> 
      <a href="${pageContext.request.contextPath}/booking?id=${li.id}">Book</a>
      </c:when>
      <c:otherwise>
       <a href="${pageContext.request.contextPath}/booking?id=${li.id}">Book</a>
      </c:otherwise>
      
      
      </c:choose> 
          
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</div>

</body>
</html>