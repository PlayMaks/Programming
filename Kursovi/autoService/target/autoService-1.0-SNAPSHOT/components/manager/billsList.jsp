<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bills</title>
</head>
<body>
<div>
    <a href="../../index.jsp">Main Page</a>
    <c:forEach items="${billsList}" var="bill">
        <div style="border: #111111 3px solid">
            <p>Front: <img width="300px" height="200px" src="${bill.getFrontPassport()}"></p>
            <p>Back: <img width="300px" height="200px" src="${bill.getBackPassport()}"></p>
            <p>Driver: ${bill.isDriver()}</p>
            <p>Rent time: ${bill.getRentTime()}</p>
            <p>Cost: ${bill.getCost()}</p>
            <p>Payment status: ${bill.isPaymentStatus()}</p>
            <p>${bill.getRentStatus()}</p>
            <p>${bill.getReturnStatus()}</p>
            <form action="EditBillStatus" method="post">
                <p>Status(Accept if empty)</p>
                <input type="hidden" name="idBill" value="${bill.getIdbill()}">
                <input type="text" name="status">
                <button type="submit">Accept</button>
            </form>
        </div>
    </c:forEach>
</div>
</body>
</html>
