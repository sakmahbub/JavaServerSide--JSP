<%-- 
    Document   : showData
    Created on : Dec 10, 2018, 12:17:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="person" class="personn.Person" scope="request">
    <jsp:setProperty name="person" property="*"/>

</jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your Result</h1>
        <table border="2">
            <tr>
                <td> Name: ${person.name}</td>
            </tr>

            <tr>
                <td>Email: ${person.email}</td>
            </tr>
            <tr>
                <td>Password: ${person.password}</td>
            </tr>
            <tr>
                <td>Age: ${person.age}</td>
            </tr>

        </table>
    </body>
</html>
