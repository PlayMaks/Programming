<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register</title>
</head>
<body>

<jstl:if test="${not empty requestScope.notAdd}">
    <p>Користувач з таким іменем вже зареєстрований</p>
</jstl:if>

<form method="post" action="controller?action=register">
    <p><input type="text" name="name" size="10" placeholder="Login"/></p>
    <p><input type="password" name="password" size="10" placeholder="Password"/></p>
    <p><input type="submit" value="Register"/></p>
</form>

</body>
</html>
