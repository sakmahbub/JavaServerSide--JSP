<%-- 
    Document   : index
    Created on : Dec 10, 2018, 11:51:20 AM
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
        <title>EL and simple JavaBeans </title>

    </head>
    <body>
        <h1>Student Registration form</h1>
        
        <table border="2">
            <!--            <tr>
                            <td>${person.name}</td>
                            <td>${person.email}</td>
                            <td>${person.password}</td>
                            <td>${person.age}</td>
                            <td>&nbsp;</td>
                        </tr>-->


            
            

            <form action="showData.jsp" method="post">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="number" name="age"/></td>
                </tr>
                <tr>
                   
                    <td><input type="submit" value="Send" /></td>
                     
                </tr>

            </form>

        

    </table>
</body>
</html>
