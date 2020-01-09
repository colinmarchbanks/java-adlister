<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/banner.jsp">
        <jsp:param name="title" value="Viewing All The 123" />
    </jsp:include>
    <style type="text/css">
        <%@include file="../resources/static/css/general.css" %>
    </style>
</head>
<body>
<jsp:include page="/partials/side_nav.jsp" />



<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
