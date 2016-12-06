<%-- 
    Document   : login
    Created on : Dec 1, 2016, 3:00:00 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>TOBA Online Banking</title>
        <link rel="stylesheet" href="../Styles/main.css" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <nav>
         <a href="../index.jsp">Home</a> &nbsp;
         <a href="../login.jsp">Login</a> &nbsp;
         <a href="login.jsp">Admin Login</a> &nbsp;
         <a href="reports.jsp">Reports</a> &nbsp;
	 <a href="../new_customer.jsp">New Customer</a> &nbsp;
         <a href="../account_activity.jsp">Account Activity</a> &nbsp;
         <a href="../account_activity.jsp">Transfer Funds</a> &nbsp;
    </nav>
        <h1>Admin Login Form</h1>
        <p>Please enter your username and password to continue.</p>
        <form action="j_security_check" method="get">
            <label class="pad_top">Username:</label>
            <input type="text" name="j_username"><br>
            <label class="pad_top">Password:</label>
            <input type="password" name="j_password"><br>
            <label>&nbsp;</label>
            <input type="submit" value="Login" class="margin_left">    
        </form>
               
    </body>
    <%@ include file="/includes/footer.jsp" %>
</html>
