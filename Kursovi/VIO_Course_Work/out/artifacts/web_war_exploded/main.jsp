<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cinema</title>
</head>
<body>

<jstl:choose>

    <jstl:when test="${not empty sessionScope.user}">

        <p>${sessionScope.user.name}
            <a href="controller?action=logout">Logout</a>
        </p>

        <form method="post" action="controller?action=create_seance">
            <input type="text" name="header" placeholder="Header of seance"/>
            <input type="text" name="num" placeholder="Number of places"/>
            <input type="submit" value="Create new seance"/>
        </form>

    </jstl:when>

    <jstl:otherwise>

        <p><a href="login.jsp">Login</a></p>
        <p><a href="register.jsp">Register</a></p>

    </jstl:otherwise>
</jstl:choose>

<jstl:forEach items="${requestScope.seances}" var="seance">
    <p>
        <jstl:out value="Seance №${seance.id}. "/>
        <a href="controller?action=go_to_seance&id=${seance.id}">
        <jstl:out value="${seance.header}"/>
        </a>
    </p>
</jstl:forEach>

</body>
</html>

