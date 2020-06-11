<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>

            .insert-courses-header {
                text-align: center;
                color: #b89de4;
                text-shadow: 2px 2px 4px #000000;
                font-size: 50px;
                margin: 5% 19%;
                padding: 9px 3px;
            }

            .insert-courses{
                width: 350px;
                margin: auto;
                background: #67cef3;
                margin-top: 50px;
                padding: 5px;
            }
            .insert-courses form{
                padding: 10px;
                font-family: arial;
                border: 1px dotted white;
            }
            .insert-courses h2{
                text-align: center;
                background: rgb(187, 238, 121);
                color: white;
                padding: 10px;
                border-radius: 10px;
            }

            .insert-courses input{
                padding: 10px;
                margin: 5px;
                border-radius: 5px;
                border: none;
            }
            input[type=text]{
                width: 90%;
            }
            input[type=submit]{
                width: 95%;
                background: rgb(181, 238, 107);
                cursor:pointer;
                font-size: 18px;
                font-weight: bold;
                color: white;
            }
            input[type=submit]:hover{
                background: yellow;
            }

            select{
                padding: 10px;
                width: 32%;
                border-radius: 5px;
            }


        </style>  

    </head>
    <body >
        <h1 align="center">Edit Trainer</h1>
        <br><br>
        <div class="insert-courses">
        <form:form method="POST" action="/updateTrainer" modelAttribute="trainer">
            <h2>Edit</h2>
            <form:input path="trainerId" type="hidden" value="" />

            <form:label path="firstName">Trainer Name</form:label>
            <form:input path="firstName" type="text" />

            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName" type="text"  />

            <form:label path="subject">Subject</form:label>
            <form:input path="subject" type="text" />

            <input type="submit" value="Submit"/>

        </form:form>

</div>


</body>
</html>
