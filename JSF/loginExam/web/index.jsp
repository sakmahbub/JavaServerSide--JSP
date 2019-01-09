<%-- 
    Document   : index
    Created on : Jan 9, 2019, 10:10:36 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Java!</h1>
        <c:if test="${empty sessionScope['loginUser']}">
            <c:redirect url="login.jsp"/>
        
    </c:if>
        <a href="login.jsp">Logout</a>
        <c:out value="${sessionScope['loginUser']}"></c:out>
    </body>
</html>
