<%--
  Created by IntelliJ IDEA.
  User: colinmarchbanks
  Date: 1/9/20
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Welcome to the pizza order form!</h1>
<form method="post" action="./display-order.jsp">

    <label for="crust"><b>Please select a crust!</b></label>
    <select name = "crust" id = "crust">
        <option value="Original">Original</option>
        <option value="Thin">Thin</option>
    </select><br><br>

    <label for="sauce"><b>Please select a sauce!</b></label>
    <select name = "sauce" id = "sauce">
        <option value="Marinara">Marinara</option>
        <option value="Alfredo">Alfredo</option>
    </select>
    <br><br>

    <label for="size"><b>Please select a size!</b></label>
    <select name = "size" id = "size">
        <option value="10">10 Inch</option>
        <option value="12">12 Inch</option>
    </select>
    <br><br>


    <input type="checkbox" name="Cheese" value="Cheese" checked>Cheese<br>
    <input type="checkbox" name="Pepperoni" value="Pepperoni">Pepperoni<br>
    <input type="checkbox" name="Mushrooms" value="Mushrooms">Mushrooms<br><br>

    <label for="address"><b>Please enter your address!</b></label>
    <input type="text" placeholder="Address" id="address" name="address" required>
    <br><br>
    <button type="submit">Submit</button>

</form>
</body>
</html>
