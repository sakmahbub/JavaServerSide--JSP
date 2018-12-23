<%-- 
    Document   : login
    Created on : Dec 23, 2018, 12:25:46 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login to our Project</h1>
    <form action="loginAuthenticate.jsp">
        Username: <input type="text" name="username"/><br/>
        Password : <input type="password" name="password"/><br/>
        <input type="submit" value="Send"/>

    </form>
    
    <font color="red">
    <c:if test="${not empty param.errMsg}">
        <c:out value="${param.errMsg}"/>
    
    </c:if>
    
    </font>

</body>
</html>
