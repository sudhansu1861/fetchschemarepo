<%@ page import="com.cg.FetchSchemaDetails" language="java" %>
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
     <th>Employee Id FOR </th>
     <th>Name</th>
     <th>Location</th>
  </tr>
 </thead>
<%--  <%= request.getAttribute("myname") %>. --%>
${myname}

 <%-- <c:forEach var="item" items="${list}" >
            <tr>
                <c:forEach var="column" items="$(item)">
                    <td>${column}</td> 
                </c:forEach>
            </tr> 
        </c:forEach> --%>
        <c:forEach var="number" begin="5" end="10">  
<c:out value="${number}"></c:out>  
</c:forEach>  
</table>
</form>
</body>
</html>