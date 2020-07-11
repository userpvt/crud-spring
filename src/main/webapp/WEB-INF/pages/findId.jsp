<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:if test="${empty film.id}">
        <title>find</title>
    </c:if>
</head>
<body>
<c:if test="${empty film.id}">
    <c:url value="/find" var="var"/>
</c:if>
<c:if test="${!empty film.title}">
    <c:url value="/show" var="var"/>
</c:if>
<form action="${var}" method="POST">
    <c:if test="${!empty film.id}">
        <input type="hidden" name="id" value="${film.id}">
    </c:if>
    <label for="id">Id</label>
    <input type="text" name="id" id="id">
    <c:if test="${empty film.id}">
        <input type="submit" value="Find id film">
    </c:if>
    <c:if test="${!empty film.id}">
        <input type="submit" value="Id film">
    </c:if>
</form>
<table>
    <tr>
        <th>id</th>
        <th>title</th>
        <th>year</th>
        <th>genre</th>
        <th>watched</th>
    </tr>
    <tr>
        <td>${film.id}</td>
        <td>${film.title}</td>
        <td>${film.year}</td>
        <td>${film.genre}</td>
        <td>${film.watched}</td>
    </tr>
</table>
</body>
</html>
