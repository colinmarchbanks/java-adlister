<%--
  Created by IntelliJ IDEA.
  User: colinmarchbanks
  Date: 1/10/20
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/banner.jsp">
        <jsp:param name="title" value="Viewing All The 123"/>
    </jsp:include>
    <style type="text/css">
        <%@include file="../resources/static/css/general.css" %>
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/partials/side_nav.jsp"/>

<div class="container">
    <div class="row mt-3">

        <div class="col-6">

            <c:choose>

                <c:when test="${contacts == null && numberOfContacts == null}">
                    <div class="col-md-6">
                        <h2>${searched.firstName} ${searched.lastName}</h2>
                        <p>${searched.phone}</p>
                    </div>
                    <a href="${pageContext.request.contextPath}/contacts"><button type="button">Reset Results</button></a>
                </c:when>
                <c:when test="${contacts == null && numberOfContacts != null}">
                    <div class="col-md-6">
                        <h2>${numberOfContacts} is the number of contacts</h2>
                    </div>
                    <a href="${pageContext.request.contextPath}/contacts"><button type="button">Reset Results</button></a>
                </c:when>
                <c:otherwise>
                    <h1>Here Are all the Contacts!</h1>

                    <c:forEach var="contact" items="${contacts}">
                        <div class="col-md-6">
                            <h2>${contact.getFirstName()} ${contact.getLastName()}</h2>
                            <p>${contact.getPhone()}</p>
                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>

        <div class="col-6">
            <h1>Search by name</h1>

            <form method="post" action="${pageContext.request.contextPath}/contact/search">

                <label for="name"><b>Search by Name</b></label>
                <input type="text" placeholder="Enter Name" id="name" name="name" required>
                <br><br>

                <button type="submit">Search</button>

            </form>

            <h1>Delete by name</h1>

            <form method="post" action="${pageContext.request.contextPath}/contact/delete">
                <label for="nameToDelete"><b>Delete by Name</b></label>
                <input type="text" placeholder="Enter Name" id="nameToDelete" name="name" required>
                <br><br>
                <button type="submit">Delete</button>

            </form>

            <h1>Add a Contact</h1>
            <form method="post" action="${pageContext.request.contextPath}/contact/add">

                <label for="firstName"><b>Enter the first name</b></label>
                <input type="text" placeholder="Enter First Name" id="firstName" name="firstName" required>
                <br><br>
                <label for="lastName"><b>Enter the last name</b></label>
                <input type="text" placeholder="Enter Last Name" id="lastName" name="lastName" required>
                <br><br>
                <label for="phone"><b>Enter the phone number</b></label>
                <input type="text" placeholder="Enter Phone" id="phone" name="phone" required>
                <br><br>

                <button type="submit">Add Contact</button>

            </form>

            <h1>Edit a Contact</h1>
            <form method="post" action="${pageContext.request.contextPath}/contact/edit">


                <label for="firstName"><b>Enter the name of the contact you want to edit</b></label>
                <input type="text" placeholder="Enter First Name" id="firstNameOfContactToEdit" name="nameToEdit" required>
                <br><br>

                <label for="firstName"><b>Enter the first name</b></label>
                <input type="text" placeholder="Enter First Name" id="firstNameToEdit" name="firstName" required>
                <br><br>
                <label for="lastName"><b>Enter the last name</b></label>
                <input type="text" placeholder="Enter Last Name" id="lastNameToEdit" name="lastName" required>
                <br><br>
                <label for="phone"><b>Enter the phone number</b></label>
                <input type="text" placeholder="Enter Phone" id="phoneToEdit" name="phone" required>
                <br><br>

                <button type="submit">Edit Contact</button>

            </form>

            <h1>Count Contacts</h1>

            <form method="post" action="${pageContext.request.contextPath}/contact/count">

                <label for="name"><b>Count contacts</b></label>
                <button type="submit">Go!</button>

            </form>

        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>


