<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>JSP Login</title>
    <style type="text/css">
        <%@include file="./resources/static/css/general.css" %>
    </style>
</head>
<body>
<%@ include file="partials/banner.jsp" %>
<%@ include file="partials/side_nav.jsp" %>

<h1>User Login</h1>
<h2>Username: ${param.username}</h2>
<h2>Password: ${param.password}</h2>
<form method="post" action="CheckProfileServlet">

    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" id="uname" name="username" required><br><br>

    <label for="pwd"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" id="pwd" name="password" required>
    <br><br>

    <button type="submit">Login</button>

</form>

</body>
</html>
