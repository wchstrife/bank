<%@ page contentType="text/html; charset=gbk" pageEncoding="gbk" %>

<%
  String action = request.getParameter("action");
  if(action != null && action.equals("login")) {
    String username = request.getParameter("uname");
    String password = request.getParameter("pwd");
    if(username == null || !username.equals("admin")) {
%>
<font color="white" size=5>username not correct!</font>
<%
      //return;
    }else if(password == null || !password.equals("admin")) {
      out.println("password not correct!");
      //return;
    }else {
      session.setAttribute("admin", "true");
      response.sendRedirect("display.jsp");
    }
  }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0054)http://www.simworld.com/client_access/client_login.asp -->
<HTML><HEAD><TITLE>SIM - Client Access - Login</TITLE>
  <META http-equiv=Content-Type content="text/html; charset=gbk" pageEncoding="gbk"><LINK
          href="images/sim_stylesheet.css" type=text/css
          rel=styleSheet>
  <SCRIPT language=JavaScript src="" type=text/javascript></SCRIPT>

  <SCRIPT language=JavaScript src="" type=text/javascript></SCRIPT>

  <SCRIPT language=JavaScript src="" type=text/javascript></SCRIPT>

  <META content="MSHTML 6.00.2900.2963" name=GENERATOR>
  <style type="text/css">
    <!--
    .STYLE1 {color: #CCCCCC}
    -->
  </style>

</HEAD>
<BODY bgColor=#20355a leftMargin=0 topMargin=0 onload=init() marginheight="0"
      marginwidth="0"><!--Begin all TOP NAVIGATIOND ROPDOWN LAYERS ------------><!--Begin About Sim Dropdown 1 -->
<DIV id=about_sim_drop1>
  <TABLE cellSpacing=0 cellPadding=0 width=140 border=0>
    <TBODY>
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width=140 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width=130><A class=topnav
                                                   onmouseover="stopTime(); showLayer('about_sim_corporate_drop2'); hideLayer('about_sim_portfolio_drop2');"
                                                   onmouseout=startTime();
                                                   href="http://www.simworld.com/about_sim/corporate/index.asp">Corporate
              Info</A></TD>
            <TD vAlign=top width=10><IMG height=10 alt=arrow
                                         src="images/nav_arrows.gif"
                                         width=10></TD></TR></TBODY></TABLE></TD></TR><!--
	<tr>
       <td bgcolor="#CACFDA">
         <table width="140" border="0" cellspacing="2" cellpadding="2">
           <tr>
             <td width="130" valign="top" align="left"><a href="/about_sim/services/index.asp" onMouseOver="stopTime(); hideLayer('about_sim_corporate_drop2');" onMouseOut="startTime();" class="topnav">Services</a></td>
             <td width="10" valign="top"><img src="/pics/spacer.gif" alt="" width="10" height="10"></td>
           </tr>
         </table>
       </td>
     </tr>
-->
    <TR>
      <TD bgColor=#cacfda>
        <TABLE cellSpacing=2 cellPadding=2 width=140 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width=130><A class=topnav
                                                   onmouseover="stopTime(); hideLayer('about_sim_corporate_drop2');"
                                                   onmouseout=startTime();
                                                   href="http://www.simworld.com/about_sim/products/index.asp">Products</A></TD>
            <TD vAlign=top width=10><IMG height=10 alt=""
                                         src="images/spacer.gif"
                                         width=10></TD></TR></TBODY></TABLE></TD></TR><!--<tr>
       <td bgcolor="#CACFDA">
         <table width="140" border="0" cellspacing="2" cellpadding="2">
           <tr>
             <td width="130" valign="top" align="left"><a href="/about_sim/portfolio/index1.asp" onMouseOver="stopTime(); showLayer('about_sim_portfolio_drop2'); hideLayer('about_sim_corporate_drop2');" onMouseOut="startTime();" class="topnav">Portfolio</a></td>
             <td width="10" valign="top"><img src="/pics/nav_arrows.gif" alt="arrow" width="10" height="10"></td>
           </tr>
         </table>
       </td>
     </tr>-->
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width=140 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width=130><A class=topnav
                                                   onmouseover=stopTime();
                                                   onmouseout="startTime(); hideLayer('about_sim_corporate_drop2');"
                                                   href="http://www.simworld.com/about_sim/portfolio/index_temp.asp">Portfolio</A></TD>
            <TD vAlign=top width=10><IMG height=10 alt=arrow
                                         src="images/spacer.gif"
                                         width=10></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV><!-- End About Sim Dropdown 1 --><!--Begin About Sim Corporate Dropdown 2 -->
<DIV id=about_sim_corporate_drop2>
  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
    <TR>
      <TD bgColor=#cacfda>
        <TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width="100%"><A class=topnav
                                                      onmouseover=stopTime(); onmouseout=startTime();
                                                      href="http://www.simworld.com/about_sim/corporate/mission.asp">Mission</A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width="100%"><A class=topnav
                                                      onmouseover=stopTime(); onmouseout=startTime();
                                                      href="http://www.simworld.com/about_sim/corporate/philosophy.asp">Philosophy</A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#cacfda>
        <TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width="100%"><A class=topnav
                                                      onmouseover=stopTime(); onmouseout=startTime();
                                                      href="http://www.simworld.com/about_sim/corporate/team.asp">Team</A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width="100%"><A class=topnav
                                                      onmouseover=stopTime(); onmouseout=startTime();
                                                      href="http://www.simworld.com/about_sim/corporate/specialty.asp">Specialty
              Markets </A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#cacfda>
        <TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
          <TBODY>
          <TR>
            <TD vAlign=top align=left width="100%"><A class=topnav
                                                      onmouseover=stopTime(); onmouseout=startTime();
                                                      href="http://www.simworld.com/about_sim/corporate/news.asp">News
              &amp; Awards</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV><!--Begin About Sim Corporate Dropdown 2 --><!--Begin About Sim Portfolio Dropdown 2 -->
<DIV id=about_sim_portfolio_drop2><!--<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CACFDA">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/about_sim/portfolio/websites.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav">Websites</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/about_sim/portfolio/multimedia.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav">Multimedia Presentations</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#CACFDA">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/about_sim/portfolio/print_graphic_design.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav" target="_blank">Print / Graphic Design</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/about_sim/client_list.pdf" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav" target=_"blank">Client List (PDF)</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>--></DIV><!--Begin About Sim Portfolio Dropdown 2 --><!--Begin Client Access Dropdown 1 -->
<DIV id=client_access_drop1><!--<table width="140" border="0" cellspacing="0" cellpadding="0">
     <tr>
       <td bgcolor="#FFFFFF">
         <table width="140" border="0" cellspacing="2" cellpadding="2">
           <tr>
             <td width="130" valign="top" align="left"><a href="/client_access/client_login.asp" onMouseOver="stopTime(); hideLayer('client_access_customer_drop2');" onMouseOut="startTime();" class="topnav">Client Login</a></td>
             <td width="10" valign="top"><img src="/pics/spacer.gif" alt="" width="10" height="10"></td>
           </tr>
         </table>
       </td>
     </tr>
     <tr>
       <td bgcolor="#CACFDA">
         <table width="140" border="0" cellspacing="2" cellpadding="2">
           <tr>
             <td width="130" valign="top" align="left"><a href="/client_access/customerservice/index1.asp" onMouseOver="stopTime(); showLayer('client_access_customer_drop2');" onMouseOut="startTime();" class="topnav">Customer Service</a></td>
             <td width="10" valign="top"><img src="/pics/nav_arrows.gif" alt="arrow" width="10" height="10"></td>
           </tr>
         </table>
       </td>
     </tr>
     <tr>
       <td bgcolor="#FFFFFF">
         <table width="140" border="0" cellspacing="2" cellpadding="2">
           <tr>
             <td width="130" valign="top" align="left"><a href="/under_construction.asp" onMouseOver="stopTime(); hideLayer('client_access_customer_drop2');" onMouseOut="startTime();" class="topnav">Beyond Today</a></td>
             <td width="10" valign="top"><img src="/pics/spacer.gif" alt="" width="10" height="10"></td>
           </tr>
         </table>
       </td>
     </tr>
   </table>--></DIV><!-- End Client Access Dropdown 1 --><!--Begin Client Access Customer Service Dropdown 2 -->
<DIV id=client_access_customer_drop2><!--<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CACFDA">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/client_access/customerservice/policy1.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav">Our Policy</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/client_access/customerservice/help1.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav">Help</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#CACFDA">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/client_access/customerservice/downloads1.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav">Downloads</a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">
      <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td width="100%" valign="top" align="left"><a href="/client_access/customerservice/tech_standards1.asp" onMouseOver="stopTime();" onMouseOut="startTime();" class="topnav" target=_"blank">Technical Standards</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>--></DIV><!-- End Client Access Customer Service Dropdown 2 --><!--Begin Join our Team Dropdown 1 -->
<DIV id=join_our_team_drop1>
  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
    <TBODY>
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width=150 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top width=10><IMG height=10 alt=""
                                         src="images/client_access.htm"
                                         width=10></TD>
            <TD vAlign=top align=right width=140><A class=topnav
                                                    onmouseover=stopTime(); onmouseout=startTime();
                                                    href="http://www.simworld.com/join_our_team/job_openings.asp">Job
              Openings</A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#cacfda>
        <TABLE cellSpacing=2 cellPadding=2 width=150 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top width=10><IMG height=10 alt=""
                                         src="images/spacer.gif" width=10></TD>
            <TD vAlign=top align=right width=140><A class=topnav
                                                    onmouseover=stopTime(); onmouseout=startTime();
                                                    href="http://www.simworld.com/join_our_team/apply_online.asp">Employee
              Benefits</A></TD></TR></TBODY></TABLE></TD></TR>
    <TR>
      <TD bgColor=#ffffff>
        <TABLE cellSpacing=2 cellPadding=2 width=150 border=0>
          <TBODY>
          <TR>
            <TD vAlign=top width=10><IMG height=10 alt=""
                                         src="images/spacer.gif" width=10></TD>
            <TD vAlign=top align=right width=140><A class=topnav
                                                    onmouseover=stopTime(); onmouseout=startTime();
                                                    href="http://www.simworld.com/join_our_team/corp_culture.asp">Corporate
              Culture</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV><!-- End Join Our Team  Dropdown 1 --><!--End all TOP NAVIGATIOND ROPDOWN LAYERS ------------><!--Begin Browser Spanning Table, this allows Main Web Site Table to be centered in the middle of the browser -->
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" align=center
       border=0>
  <TBODY>
  <TR>
    <TD><!--Begin Main Web Site Table All Website Design elements below-->
      <TABLE borderColor=#ffffff cellSpacing=0 cellPadding=0 width=760
             align=center border=1>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD><!-- Begin Top Logo, Navigation and Message bar Table -->
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><!--Beign Global Nav Buttons --->
                    <TBODY>
                    <TR>
                      <TD rowSpan=2><IMG height=53
                                         alt="Screened Images Multimedia"
                                         src="images/sim_logo_top.gif"
                                         width=136 useMap=#top_logo_map border=0><MAP
                              name=top_logo_map><AREA shape=RECT
                                                      alt="Screened Images Multimedia [Back to Home]"
                                                      coords=11,4,120,54
                                                      href="http://www.simworld.com/index.asp"></MAP></TD>
                      <TD><span class="STYLE1">欢迎来到银行管理系统;</span></TD>
                    </TR>
                    <TR><!--End Global Nav Buttons --->
                      <TD><span class="STYLE1">请输入您的银行下发的密钥登录</span></TD>
                    </TR></TBODY></TABLE><!-- End Top Logo, Navigation and Message bar Table --></TD></TR>
              <TR>
                <TD><!-- Begin Inner Content Table:  This portion will be customizable throughout the website -->
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG height=324 alt=""
                               src="images/client_login_left_arc.gif"
                               width=137 useMap=#bot_logo_map border=0><MAP
                              name=bot_logo_map><AREA shape=RECT
                                                      alt="Screened Images Multimedia [Back to Home]"
                                                      coords=11,0,120,24
                                                      href="http://www.simworld.com/index.asp"></MAP></TD>
                      <TD>
                        <TABLE cellSpacing=0 cellPadding=0 width="100%"
                               border=0>
                          <TBODY>
                          <TR>
                            <TD><IMG height=91 alt="CLIENT LOG-IN"
                                     src="images/client_login_title.gif"
                                     width=282></TD></TR>
                          <TR>
                            <TD>
                              <FORM action=index.jsp method=post>
                                <input type=hidden name=action value=login>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%"
                                       background="images/client_login_text_bg.gif"
                                       border=0>
                                  <TBODY>
                                  <TR>
                                    <TD rowSpan=4><IMG height=158 alt=""
                                                       src="images/spacer.gif"
                                                       width=22 border=0></TD>
                                    <TD colSpan=2>
                                      <P class=bodydarkblue>Please enter your username
                                        and password here to preview your designs, check
                                        project status and/or submit new job
                                        requests.</P></TD></TR>
                                  <TR>
                                    <TD>
                                      <P class=bodyldarkblue><LABEL
                                              for=uname>账户名:</LABEL></P></TD>
                                    <TD><INPUT id=uname name=uname></TD></TR>
                                  <TR>
                                    <TD>
                                      <P class=bodyldarkblue><LABEL
                                              for=pwd>密码:</LABEL></P></TD>
                                    <TD><INPUT id=pwd type=password
                                               name=pwd></TD></TR>
                                  <TR>
                                    <TD vAlign=top colSpan=2><A class=bodydarkblue
                                                                href="http://www.simworld.com/client_access/client_login.asp"><STRONG><!--Forget your password?--></STRONG></A><IMG
                                            height=1 alt=""
                                            src="images/spacer.gif"
                                            width=132
                                            border=0>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
                                            type=image alt=Submit
                                            src="images/client_login_submit.gif"
                                            align=absMiddle value=Submit
                                            name=Submit></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD><IMG height=75 alt=""
                                     src="images/client_login_bot_arc.gif"
                                     width=282></TD></TR></TBODY></TABLE></TD>
                      <TD><IMG height=324 alt="Log-in Image"
                               src="images/client_login_main_pic.jpg"
                               width=341></TD></TR></TBODY></TABLE><!-- End Inner Content Table --------></TD></TR>
              <TR>
                <TD><!-- Begin Bottom Navigation: Contact Us, Request A- Quote -->
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD><A
                              onmouseover="Rollover('nav_homepage_a','nav_homepage');"
                              onmouseout="Rollover('nav_homepage','nav_homepage');"
                              href="http://www.simworld.com/index.asp"></A><IMG height=26
                                                                                alt=""
                                                                                src="images/interior_bot_nav_bar.gif"
                                                                                width=100%></TD>
                    </TR>
                    <TR>
                      <TD><IMG height=12
                               alt="Copyright 2003 Screened Images, Inc."
                               src="images/bot_footer_bar.gif"
                               width=760></TD></TR></TBODY></TABLE><!-- End Bottom Navigation: Contact Us, Request A- Quote --></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!--End Main Web Site Table --></TD></TR></TBODY></TABLE><!--End Browser Spanning Table --></BODY></HTML>
