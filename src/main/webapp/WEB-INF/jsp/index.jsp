<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Manager</title>

        <link href="<c:url value="css/main.css" />" rel="stylesheet">

    </head>
    <body style="background-color: #f9dcfa">
        <div align="center">
            <h1>Trainer Manager</h1>
            <a href="new">Create New Trainer</a>
            <br/>
            <br/>
            <table border='1' cellpadding="10">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>subject</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tr" items="${listtrainers}">
                        <tr>
                            <!--                            edw bazoume tis metablhtes akribws pou antistoixoun sto entity-->
                            <td>${tr.firstName}</td>
                            <td>${tr.lastName}</td>
                            <td>${tr.subject}</td>   
                            <td>
                                <a href="/edit/${tr.trainerId}">Edit</a>
                                <a href="/delete/${tr.trainerId}">Delete</a>
                            </td>   
                        </tr>
                    </tbody>
                </c:forEach>
            </table>

        </div>

    </body>
</html>
