<%-- 
    Document   : core_if
    Created on : Dec 13, 2018, 9:54:12 AM
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
        <h1>Hello World CalenderBean</h1>

        <jsp:useBean id="cal" class="cbean.CalendarBean"/>


        The time is currently : <BR><BR>

        <c:out value="${cal.time}"/>
        <c:set var="hour" value="${cal.hour}" scope="session"/>
        <br>
        <c:if test="${hour >= 0 && hour <=11}">
            Good Morning!
        </c:if>

        <c:if test="${hour >= 12 && hour <=17}">
            Good Afternoon!
        </c:if>

        <c:if test="${hour >= 18 && hour <=20}">
            Good Evening!
        </c:if>

        <c:if test="${hour >= 21 && hour <=23}">
            Good Night!
        </c:if>
    </body>
</html>
