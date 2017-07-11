<%@page import="java.sql.*" %>
<%@ page import="dao.CustomerDao" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/7/10
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String bank = request.getParameter("bank");
    CustomerDao customerDao = new CustomerDao();
    customerDao.addCustomer(name, bank);
    response.sendRedirect("display.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
</body>
</html>