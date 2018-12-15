<%-- 
    Document   : StudentSearch
    Created on : Dec 15, 2018, 11:17:03 AM
    Author     : User
--%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Students Search</h1>


           Name: <h:outputText value="#{std.student.name}"/><br>

           Email: <h:outputText value="#{std.student.email}"/><br>
           Password:  <h:outputText value="#{std.student.password}"/>



        </body>
    </f:view>
</html>
