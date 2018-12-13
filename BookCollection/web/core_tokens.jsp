<%-- 
    Document   : core_tokens
    Created on : Dec 13, 2018, 10:44:42 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var="queryResult" value="Sakil, Mahbub, Male, 28, Java Programmer, Bangladesh" scope="session"/>
        <table border="1">
            <tr>
                <th>First Name</th> 
                <th>Last Name</th> 
                <th>Sex</th> 
                <th>Age</th> 
                <th>Occupation</th> 
                <th>Location</th> 
            </tr>
            
            <tr>
                <c:forTokens items="${queryResult}" delims="," var="token">
                    <td><c:out value="${token}"/></td>
                </c:forTokens>
                
                
            </tr>
            

        </table>
    </body>
</html>
