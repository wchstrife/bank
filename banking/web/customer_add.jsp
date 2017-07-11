<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/7/10
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="add" action="customer_add_ok.jsp" method="post" >
    <table border="1" align="center">
        <tr>
            <td>
                姓名<input type="text" name="name" >
            </td>
        </tr>
        <tr>
            <td>
                银行<input type="text" name="bank">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>