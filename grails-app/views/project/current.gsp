
<%--
  Created by IntelliJ IDEA.
  User: nicolas
  Date: 12/04/19
  Time: 10:54
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
<head>
    <title>Curren Projects</title>
</head>

<body>
    <table border="1">
        <g:each in="${allProjects}" status="i" var="thisProject">
            <tr>
                <td>${thisProject.name}</td>
                <td>${thisProject.description}</td>
                <td>${thisProject.dueDate}</td>
            </tr>
        </g:each>
    </table>

</body>
</html>
