<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Utwórz książkę</title>
</head>
<body>
<form:form method="post" modelAttribute="book">
    <label>Tytuł:
        <form:input path="title"/>
    </label>
    <form:errors path="title"/>
    <br/>
    <label>ISBN:
        <form:input path="isbn"/>
    </label>
    <form:errors path="isbn"/>
    <br/>
    <label>Autor:
        <form:input path="author"/>
    </label>
    <form:errors path="author"/>
    <br/>
    <label>Wydawca:
        <form:input path="publisher"/>
    </label>
    <form:errors path="publisher"/>
    <br/>
    <label>Typ:
        <form:input path="type"/>
    </label>
    <form:errors path="type"/>
    <br/>
    <form:button type="submit">Dodaj</form:button>
</form:form>
</body>
</html>