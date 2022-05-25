<%@ page import="KodJ.Users" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="bg-white">
    <div class="container">
<%
    boolean b = Boolean.parseBoolean((String) request.getAttribute("user"));
    if (b == true){
%>
    <div class="col-8 row alert alert-danger alert-dismissible fade show mt-3 mx-auto" role="alert">
        <span>Incorrect <b>email</b> and <b>password</b>!</span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% } else {%>
    {<div class="mt-3"></div>
<%}%>
<div class="col-8 card-deck row  mx-auto">
    <div class="col-4 p-2 mx-auto w-75">
        <div class="card border-success shadow p-3 bg-white rounded">
            <div class="card-header bg-transparent border-success">Login Pages</div>
            <div class="card-body text-success">
                <form action="newServlet" method="post" class="align-bottom w-75 l-5 mx-auto">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-control" name="login" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
                    <p></p>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="passwor" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <p></p>
                <button type="submit" class="btn btn-primary">Login</button>
</form>
            </div>
        </div>
    </div>
</div>
</body>
</html>