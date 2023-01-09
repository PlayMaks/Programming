<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tender</title>
    <link rel="stylesheet" href="/css/stylesheet.css">
</head>
<body>
<c:choose>
    <c:when test="${idCurrentUser!=null}">
        <c:if test="${tendersList==null}">
            <c:redirect url="/actualTender"/>
        </c:if>
        <a href="/LogOut">LogOut</a>
        <form method="post" action="/CreateTender">
            <label>Name of tender</label>
            <input type="text" name="tenderName">
            <button type="submit">Create tender</button>
        </form>
        <form method="post" action="/SearchTender">
            <label>Name of tender to search</label>
            <input type="text" name="tenderName">
            <button type="submit">Search</button>
        </form>
        <jsp:include page="TenderList.jsp"/>
    </c:when>
    <c:otherwise>
        <div class="form-container">
            <form action="/Login" method="post">
                <label>Enter Login</label><br>
                <input name="login" required type="text"><br>
                <label>Enter password</label><br>
                <input name="password" required type="password"><br>
                <button type="submit">Login</button>
                <br>
            </form>
            <form action="/Register" id="registration" method="post">
                <label>Enter username</label><br>
                <input name="username" required type="text"><br>
                <label>Enter Login</label><br>
                <input name="login" required type="text"><br>
                <label>Enter password</label><br>
                <input name="password" required type="password"><br>
                <button type="submit">Register</button>
            </form>
        </div>
    </c:otherwise>
</c:choose>
</body>
</html>