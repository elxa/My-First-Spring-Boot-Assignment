<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="<c:url value="css/main.css" />" rel="stylesheet">
        
    </head>
    <body>
        <h1 align="center">Create New Trainer</h1>
        <br><br>
        <div allign="center" class="insert-courses">
            <form:form method="POST" action="save" modelAttribute="trainer">
                <h2>Sign Up</h2>
                <form:label path="firstName">Trainer Name</form:label>
                <form:input path="firstName" type="text"/>

                <form:label path="lastName">Last Name</form:label>
                <form:input path="lastName" type="text"/>

                <form:label path="subject">Subject</form:label>
                <form:input path="subject" type="text"/>

                <input type="submit" value="Submit"/>

            </form:form>
        </div>


    </body>
</html>
