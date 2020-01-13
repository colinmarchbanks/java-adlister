<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: colinmarchbanks
  Date: 1/13/20
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:choose>
    <c:when test="${sessionScope.isAdmin == false}">
        <%response.sendRedirect("/profile");%>
    </c:when>
</c:choose>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Admin page"/>
    </jsp:include>
    <style>

    </style>

</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>
<h1>Welcome to the admin page</h1>
<h3>Here's where the privileges would be</h3>
</body>
</html>
