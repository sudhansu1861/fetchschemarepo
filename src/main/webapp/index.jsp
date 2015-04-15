<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
thead {color:green;}
tbody {color:blue;}
tfoot {color:red;}

table, th, td {
    border: 1px solid black;
}
</style>

</head>
<body>
<form >
<b>The Demo Object Names are:-

<br>
 
<table>
<thead>
  <tr>
     <th>Employee Id</th>
     <th>Name</th>
     <th>Location</th>
  </tr>
 </thead>

<c:forEach items="${list}" var="al">

    <tr>
        <td>${al.field1} </td>
        <td>${al.field2} </td>
        <td>${al.field3} </td>
        
        
    </tr>
    
</c:forEach>
</table>
</form>
</body>
</html>