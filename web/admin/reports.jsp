<%-- 
    Document   : reports
    Created on : Dec 1, 2016, 2:05:02 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
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
       
        <table>
            <td>First Name</td>&nbsp;
            <td>Last Name</td>&nbsp;
            <td>City</td>&nbsp;
            <td>State</td>&nbsp;
            <td>Zip</td>&nbsp;
        </table>
         <jsp:include page="/ReportsServlet"/>
         <c:forEach var="u" items="${users}">
         <table>
             <td>${u.firstName}<td>&nbsp;
             <td>${u.lastName}</td>&nbsp;
             <td>${u.city}</td>&nbsp;
             <td>${u.state}</td>&nbsp;
             <td>${u.zipCode}</td>&nbsp;
         </c:forEach>
        </table>
         <section>
         <h2>User Table</h2>
         <p><a href="../ReportDataServlet">Report Data</a><br></p>             
    </section>
    </body>
    <%@ include file="/includes/footer.jsp" %>
</html>
