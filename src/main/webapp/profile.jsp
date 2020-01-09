
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <style type="text/css">
        <%@include file="./resources/static/css/general.css" %>
    </style>
</head>
<body>

    <%@ include file="partials/side_nav.jsp" %>
    <%@ include file="partials/banner.jsp" %>
    <h1>Hello ${param.username}!</h1>

</body>
</html>
