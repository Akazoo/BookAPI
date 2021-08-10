<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Lista książek</title>
</head>
<body>
<div><a href="/admin/books/all">Powrót do listy</a></div>
<div>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>ISBN</th>
            <th>Title</th>
            <th>Publisher</th>
            <th>Author</th>
            <th>Type</th>
            <th>Actions</th>
        </tr>
            <tr>
                <td><c:out value="${book.id}"/></td>
                <td><c:out value="${book.isbn}"/></td>
                <td><c:out value="${book.title}"/></td>
                <td><c:out value="${book.publisher}"/></td>
                <td><c:out value="${book.author}"/></td>
                <td><c:out value="${book.type}"/></td>
                <td>
                    <span><a href="/admin/books/delete?id=${book.id}">Delete</a></span>
                    <span><a href="/admin/books/edit?id=${book.id}">Edit</a></span>
                </td>
            </tr>
    </table>
</div>
</body>
</html>