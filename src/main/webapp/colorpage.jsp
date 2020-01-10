<%--
  Created by IntelliJ IDEA.
  User: colinmarchbanks
  Date: 1/8/20
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
String color = <%=request.getParameter("color")%>;
<html>
<head>
    <title>Color Page</title>
    <style>body{background-color:<%=request.getParameter("color")%>;}</style>
</head>
<body>
    <h1>Welcome to the color page</h1>
</body>
</html>
