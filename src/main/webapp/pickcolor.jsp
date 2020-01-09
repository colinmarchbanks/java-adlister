<%--
  Created by IntelliJ IDEA.
  User: colinmarchbanks
  Date: 1/8/20
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Pick Color</title>
</head>
<body>
<form method="post" action="./colorpage.jsp">

    <label for="color"><b>Color Input</b></label>
    <input type="text" placeholder="Enter Hexcode for color" id="color" name="color" required>
    <br><br>

    <button type="submit">Submit</button>

</form>
</body>
</html>
