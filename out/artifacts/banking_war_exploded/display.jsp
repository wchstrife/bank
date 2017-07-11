<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/7/8
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.CustomerDao" %>
<%@ page import="bean.Customer" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table align="center" border="1">
    <caption>所有客户信息     <input type="button" value="添加客户" onclick="window.location='customer_add.jsp'"></caption>
    <tr bgcolor="#7fffd4">
        <td>编号</td>
        <td>姓名</td>
        <td>银行</td>
        <td>操作</td>
    </tr>
    <%
        CustomerDao customerDao = new CustomerDao();
        ArrayList customers = customerDao.getAllCustmoer();
        for (int i=0; i<customers.size(); i++){
            Customer customer = (Customer) customers.get(i);
    %>
    <tr>
        <td>  <%=customer.getId()%>  </td>
        <td>  <%=customer.getName()%>  </td>
        <td>  <%=customer.getBank()%>  </td>
        <td>
            <form action="customer_detail.jsp", method="get" >
                <input value="<%=customer.getName()%>" name="name" type="hidden">
                <input type="submit" value="查看详细信息">
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
