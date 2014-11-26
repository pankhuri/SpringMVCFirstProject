<%--
  Created by IntelliJ IDEA.
  User: pankhurikaushik
  Date: 20/11/14
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h2> Details </h2>
<table>
  <tr>
    <td>Name</td>
    <td>${name}</td>
  </tr>
  <tr>
    <td>XML Format</td>
    <td><c:out value="${xmlFormat}"/></td>
  </tr>
</table>

<div>
  <h2> All Nodes</h2>
  <ul class="node-list">
  <c:forEach var="leafNode" items="${leafNodes}">
    <li class="leaf-node"> ${leafNode} </li>
  </c:forEach>
  </ul>
</div>
</body>
</html>
