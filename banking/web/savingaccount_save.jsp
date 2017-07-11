<%@ page import="dao.SavingaccountDao" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/7/11
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int id = Integer.parseInt(request.getParameter("name"));
    double amt = Double.parseDouble(request.getParameter("number"));
    SavingaccountDao save = new SavingaccountDao();
    String test = save.save(id, amt);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
您申请存入：<%=amt%><br>
状态：<%=test%>
</body>
</html>
