
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
        <h1>Student Form IDB</h1>
    <h:form>
        
        <table>
            <tr>
                <td>ID:</td>
                <td><h:inputText value="#{std.stdu.id}"/></td>
            </tr>
            
            <tr>
                <td>Name:</td>
                <td><h:inputText value="#{std.stdu.name}"/></td>
            </tr>
            
            <tr>
                <td>Gender:</td>
                <td><h:inputText value="#{std.stdu.gender}"/></td>
            </tr>
            
            
            <tr>
                <td>Round:</td>
                <td><h:inputText value="#{std.stdu.round}"/></td>
            </tr>
            
            
            <tr>
                <td>Email: </td>
                <td><h:inputText value="#{std.stdu.email}"/></td>
            </tr>
            
            <tr>
                <td>Password:</td>
                <td><h:inputText value="#{std.stdu.password}"/></td>
            </tr>
            
            
            <tr>
                <td></td>
                <td><h:commandButton value="Submit" action="submit"/></td>
            </tr>
        </table>
        
        
       
        
        
        
    </h:form>
    </body>
    </f:view>
</html>
