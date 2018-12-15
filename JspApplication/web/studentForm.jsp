<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <f:view>
        <head>
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Students Form</h1>
            <h:form>

                Name: <h:inputText value="#{std.student.name}" /><br>

               Email: <h:inputText value="#{std.student.email}" /><br>
               Passw: <h:inputText value="#{std.student.password}" /><br><br>


                <h:commandButton value="Search" action="submit"/>
            </h:form>

        </body>
    </f:view>
</html>
