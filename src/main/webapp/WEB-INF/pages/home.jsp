<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
</head>
<body>
<div align="center">
    <h1>People List</h1>
    <table border="1">
        <th>No</th>
        <th>Name</th>
        <th>Country</th>

        <c:forEach var="person" items="${personList}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${person.name}</td>
                <td>${person.country}</td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>