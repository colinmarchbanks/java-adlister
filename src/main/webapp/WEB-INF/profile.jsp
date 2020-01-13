<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${sessionScope.user.toString() != null}">
        <html>
        <head>
            <jsp:include page="../partials/head.jsp">
                <jsp:param name="title" value="Your Profile" />
            </jsp:include>
        </head>
        <body>
        <jsp:include page="../partials/navbar.jsp" />

        <div class="container">
            <h1>Welcome ${sessionScope.user}</h1>
            <h3>Viewing your profile.</h3>

        </div>

        </body>
        </html>

    </c:when>
    <c:when test="${sessionScope.isAdmin == true}">
        <%response.sendRedirect("/admin-page");%>
    </c:when>
    <c:otherwise>
        <%response.sendRedirect("/login");%>
    </c:otherwise>
</c:choose>
