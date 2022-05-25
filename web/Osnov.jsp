<%@ page import="java.util.ArrayList" %>
<%@ page import="KodJ.Items" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div>
    <h2 class="text-center">Welcome to BITLAB SHOP</h2>
    <p class="text-black-50 text-center">Electronic devices with high quality and service</p>
    <div class="container mx-auto">
        <div class="col-8 card-deck row mx-auto">
            <%
                ArrayList<Items> arr = (ArrayList<Items>) request.getAttribute("tovary");
                if (arr != null){
                    for (Items i : arr){
            %>
            <div class="col-4 p-2">
                <div class="card border-success shadow p-3 bg-white rounded">
                    <div class="card-header bg-transparent border-success"><%=i.getName()%></div>
                    <div class="card-body text-success">
                        <h5 class="card-title"><%=i.getPrice()%></h5>
                        <p class="card-text"><%=i.getDescription()%></p>
                    </div>
                </div>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</div>
</body>
</html>