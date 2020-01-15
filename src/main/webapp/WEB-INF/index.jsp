<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Adlister"/>
    </jsp:include>
<%--    <style type="text/css">--%>
<%--        <%@include file="../resources/static/css/general.css" %>--%>
<%--    </style>--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>

<div class="container">
    <div class="row mt-3">

        <div class="col-6">

<%--            <c:choose>--%>

<%--                <c:when test="${contacts == null && numberOfContacts == null}">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <h2>${searched.firstName} ${searched.lastName}</h2>--%>
<%--                        <p>${searched.phone}</p>--%>
<%--                    </div>--%>
<%--                    <a href="${pageContext.request.contextPath}/contacts"><button type="button">Reset Results</button></a>--%>
<%--                </c:when>--%>
<%--                <c:when test="${contacts == null && numberOfContacts != null}">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <h2>${numberOfContacts} is the number of contacts</h2>--%>
<%--                    </div>--%>
<%--                    <a href="${pageContext.request.contextPath}/contacts"><button type="button">Reset Results</button></a>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
                    <h1>Here Are all the Ads!</h1>

                    <c:forEach var="ad" items="${ads}">
                        <div class="col-md-6">
                            <h2>${ad.getTitle()}</h2>
                            <p>${ad.getDescription()}</p>
                            <h5>${ad.getUserId()}</h5>
                        </div>
                    </c:forEach>
<%--                </c:otherwise>--%>
<%--//            </c:choose>--%>
        </div>

        <div class="col-6">
<%--            <h1>Search by name</h1>--%>

<%--            <form method="post" action="${pageContext.request.contextPath}/contact/search">--%>

<%--                <label for="name"><b>Search by Name</b></label>--%>
<%--                <input type="text" placeholder="Enter Name" id="name" name="name" required>--%>
<%--                <br><br>--%>

<%--                <button type="submit">Search</button>--%>

<%--            </form>--%>

<%--            <h1>Delete by name</h1>--%>

<%--            <form method="post" action="${pageContext.request.contextPath}/contact/delete">--%>
<%--                <label for="nameToDelete"><b>Delete by Name</b></label>--%>
<%--                <input type="text" placeholder="Enter Name" id="nameToDelete" name="name" required>--%>
<%--                <br><br>--%>
<%--                <button type="submit">Delete</button>--%>

<%--            </form>--%>

            <h1>Create an Ad</h1>
            <form method="post" action="${pageContext.request.contextPath}/ads/create">

                <label for="userId"><b>Enter the User ID</b></label>
                <input type="text" placeholder="Enter User ID" id="userId" name="userId" required>
                <br><br>
                <label for="title"><b>Enter the Title</b></label>
                <input type="text" placeholder="Enter Title" id="title" name="title" required>
                <br><br>
                <label for="description"><b>Enter the description</b></label>
                <input type="text" placeholder="Enter description" id="description" name="description" required>
                <br><br>

                <button type="submit">Add Contact</button>

            </form>

<%--            <h1>Edit a Contact</h1>--%>
<%--            <form method="post" action="${pageContext.request.contextPath}/contact/edit">--%>


<%--                <label for="firstName"><b>Enter the name of the contact you want to edit</b></label>--%>
<%--                <input type="text" placeholder="Enter First Name" id="firstNameOfContactToEdit" name="nameToEdit" required>--%>
<%--                <br><br>--%>

<%--                <label for="firstName"><b>Enter the first name</b></label>--%>
<%--                <input type="text" placeholder="Enter First Name" id="firstNameToEdit" name="firstName" required>--%>
<%--                <br><br>--%>
<%--                <label for="lastName"><b>Enter the last name</b></label>--%>
<%--                <input type="text" placeholder="Enter Last Name" id="lastNameToEdit" name="lastName" required>--%>
<%--                <br><br>--%>
<%--                <label for="phone"><b>Enter the phone number</b></label>--%>
<%--                <input type="text" placeholder="Enter Phone" id="phoneToEdit" name="phone" required>--%>
<%--                <br><br>--%>

<%--                <button type="submit">Edit Contact</button>--%>

<%--            </form>--%>

<%--            <h1>Count Contacts</h1>--%>

<%--            <form method="post" action="${pageContext.request.contextPath}/contact/count">--%>

<%--                <label for="name"><b>Count contacts</b></label>--%>
<%--                <button type="submit">Go!</button>--%>

<%--            </form>--%>

        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
