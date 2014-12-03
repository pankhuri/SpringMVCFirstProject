<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="resources/css/application.css" rel="stylesheet"/>

<html>
<head>
  <title>Event</title>
</head>
<body>

<h2>Create Event</h2>
<form:form method="POST" action="/SpringMVCProject/create" htmlEscape="true">

  <table>
    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name" /></td>
    </tr>
    <tr>
      <td><form:label path="xmlFormat">XML Format</form:label></td>
      <td><form:textarea path="xmlFormat" class="xml-textarea" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Submit"/>
      </td>
    </tr>
  </table>
</form:form>
</body>
</html>