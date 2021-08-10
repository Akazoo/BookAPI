<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Lista książek</title>
</head>
<body>
<div><a href="/admin/books/create">Dodaj książkę</a></div>
<div>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>
                    <span><a href="/admin/books/show?id=${book.id}">Show</a> </span>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>