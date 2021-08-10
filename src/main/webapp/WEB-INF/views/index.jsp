<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>API Menu</title>
</head>
<body><br>
<h2> Instrukcje API</h2>
<br>
<div>
    <table border="1">
        <tr>
            <th>Metoda</th>
            <th>Adres</th>
            <th>Akcja</th>
        </tr>
            <tr>
                <td>GET</td>
                <td>/books</td>
                <td>Zwraca listę wszystkich książek.</td>
            </tr>
        <tr>
            <td>POST</td>
            <td>/books</td>
            <td>Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.</td>
        </tr>
        <tr>
            <td>GET</td>
            <td>/books/{id}</td>
            <td>Wyświetla informacje o książce o podanym id.</td>
        </tr>
        <tr>
            <td>PUT</td>
            <td>/books</td>
            <td>Zmienia informacje o książce o podanym id na nową.</td>
        </tr>
        <tr>
            <td>DELETE</td>
            <td>/books/{id}</td>
            <td>Usuwa książkę o podanym id z bazy danych.</td>
        </tr>
    </table>
    <br>
    <span><h4><a href="/admin/books/all">Dostęp graficzny</a></h4></span>
</div>
</body>
</html>