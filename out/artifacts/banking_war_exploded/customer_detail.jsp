<%@ page import="dao.CustomerDao" %>
<%@ page import="bean.Customer" %>
<%@ page import="dao.CheckingaccountDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Savingaccount" %>
<%@ page import="dao.SavingaccountDao" %>
<%@ page import="bean.Checkingaccount" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/7/10
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CustomerDao customerDao = new CustomerDao();
    String name = request.getParameter("name");
    Customer customer = customerDao.findByName(name);
    int pid = customer.getId();
    String bank = customer.getBank();

    CheckingaccountDao checkingaccountDao= new CheckingaccountDao();
    ArrayList checkList = checkingaccountDao.findByPid(pid);

    SavingaccountDao savingaccountDao = new SavingaccountDao();
    ArrayList saveList = savingaccountDao.findByPid(pid);
%>
<html>
<head>
    <title><%=name%>的账户信息</title>
</head>
<body>

<table  align="center" border="1">
    <caption><%=name%>的普通支票账户</caption>
    <tr bgcolor="#f0ffff">
        <td>账户ID</td>
        <td>账户余额   </td>
        <td>透支额度   </td>
        <td>提取现金   </td>
        <td>存入现金   </td>
    </tr>
    <%
        for(int i=0; i<checkList.size(); i++){
            Checkingaccount checkingaccount = (Checkingaccount) checkList.get(i);
    %>
    <tr>
        <td><%=checkingaccount.getId()%></td>
        <td><%=checkingaccount.getBanlance()%></td>
        <td><%=checkingaccount.getProtect()%></td>
        <td>
            <form action="checkingaccount_draw.jsp">
                <input value="<%= String.valueOf(checkingaccount.getId())%>" name="name" type="hidden">
                <input type="submit" value="取钱">
            </form>
        </td>
        <td>
            <form action="checkingaccount_save.jsp">
                <input value="<%= String.valueOf(checkingaccount.getId())%>" name="name" type="hidden">
                <input type="submit" value="存钱">
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>


<table  align="center" border="1">
    <caption><%=name%>的活期存储账户</caption>
    <tr bgcolor="#f0ffff">
        <td>账户ID</td>
        <td>账户余额   </td>
        <td>利率收益   </td>
        <td>提取现金   </td>
        <td>存入现金   </td>
    </tr>
    <%
        for(int i=0; i<saveList.size(); i++){
            Savingaccount savingaccount = (Savingaccount) saveList.get(i);
    %>
    <tr>
        <td><%=savingaccount.getId()%></td>
        <td><%=savingaccount.getBanlance()%></td>
        <td><%=savingaccount.getInterestRate()%></td>
        <td>
            <form action="savingaccount_draw.jsp">
                <input value="<%=String.valueOf(savingaccount.getId())%>" name="name" type="hidden">
                <input type="submit" value="取钱">
            </form>
        </td>
        <td>
            <form action="savingaccount_save.jsp">
                <input value="<%=String.valueOf(savingaccount.getId())%>" name="name" type="hidden">
                <input type="submit" value="存钱">
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
