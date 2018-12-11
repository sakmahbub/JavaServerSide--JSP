<%-- 
    Document   : complexBean
    Created on : Dec 11, 2018, 10:11:08 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="person" class="surblets.Person" scope="request">
    <jsp:setProperty name="person" property="*"/>
</jsp:useBean>

<jsp:useBean id="address" class="surblets.Address" scope="request">
    <jsp:setProperty name="address" property="*"/>
</jsp:useBean>

<jsp:useBean id="number" class="surblets.PhoneNumber" scope="request">
    <jsp:setProperty name="number" property="*"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL and Complex JavaBeans</title>
    </head>
    <body>
        <h2> EL and Complex JavaBeans</h2>

        <table border="2">
            <tr>
                <td>Name</td>
                <td>${person.name}</td>
            </tr>
            <tr>
                <td>Age</td>
                <td>${person.age}</td>
            </tr>

            <tr>
                <td>Village</td>
                <td>${person.address.vill}</td>
            </tr>

            <tr>
                <td>Thana</td>
                <td>${person.address.thana}</td>
            </tr>

            <tr>
                <td>Country</td>
                <td>${person.address.county}</td>
            </tr>

            <tr>
                <td>Post Code</td>
                <td>${person.address.postCode}</td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td>${person.address.phoneNumber[0].std}
                    ${person.address.phoneNumber[0].number}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Send"/></td>
            </tr>



        </table>


    </body>
</html>
