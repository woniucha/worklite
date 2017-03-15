<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>运维工作管理系统</title>
<script type="text/javascript">

</script>
<style type="text/css">
<!--
.STYLE5 {
	color: #000000;
	font-family: "微软雅黑";
}
.STYLE6 {font-family: "微软雅黑"}
.STYLE8 {color: #999999}
.STYLE9 {font-family: "微软雅黑"; color: #999999; }
-->
</style>
</head>

<%
Object isLogin = session.getAttribute("userid");
if(isLogin == null)
{ 
response.sendRedirect("worklite_user_login.jsp");
}
%>

<body topmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#999999">
  <tr>
    <td height="98" colspan="2" bgcolor="#FFFFFF"><table width="100%" border="0">
        <tr>
          <td width="23%" height="108"><img src="img/login_01.png" width="250" height="106"></td>
          <td width="58%">&nbsp;</td>
          <td width="19%"><table width="100%" height="106" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="15">&nbsp;</td>
              <td><div align="right"><span class="STYLE6">当前用户:<%=request.getSession().getAttribute("username")%>&nbsp;&nbsp;<a href="login!loginOut">退出系统</a></span></div></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td width="11%" height="255" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><span class="STYLE6"><a href="user!userToDoing" target="right">√&nbsp;待办事项</a></span></div></td>
      </tr>
      <tr>
        <td width="73%" height="37" background="img/background/bg_table_topgray.png"><div align="center"><span class="STYLE6"><a href="worklite_task_main.jsp" target="right">√&nbsp;任务管理</a></span></div></td>
      </tr>
      
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center" class="STYLE8">考核管理-待开发</div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><span class="STYLE8"></span><!--<a href="worklite_incident_main.jsp" target="right" class="STYLE6">-->
          <span class="STYLE8">事件管理-待开发</span></span></div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center" class="STYLE9">问题管理-待开发</div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><a href="worklite_knowledge_main.jsp" target="right" class="STYLE6">√&nbsp;知识管理</a></div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center" class="STYLE9"><!--<a href="worklite_meeting_main.jsp" target="right" class="STYLE7"></a>-->会议管理-待开发</div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><a href="worklite_checking_main.jsp" target="right" class="STYLE6">√&nbsp;考勤管理</a></div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><a href="worklite_book_main.jsp" target="right" class="STYLE6">√&nbsp;图书管理</a></div></td>
      </tr>
      <tr>
        <td height="37" background="img/background/bg_table_topgray.png"><div align="center"><a href="worklite_token_main.jsp" target="right" class="STYLE6">√&nbsp;令牌管理</a></div></td>
      </tr>
      <tr>
        <td height="38" background="img/background/bg_table_topgray.png"><div align="center" class="STYLE5"><a href="worklite_report_main.jsp" target="right">√&nbsp;周报月报</a></div></td>
      </tr>
      
      <tr>
        <td height="38" background="img/background/bg_table_topgray.png"><div align="center"><span class="STYLE6">√<a href="worklite_user_main.jsp" target="right">&nbsp;用户管理</a></span></div></td>
      </tr>
    </table></td>
    <td width="89%" height="450" valign="top" bgcolor="#FFFFFF"><iframe id="right" name="right" height="100%" width="100%" scrolling="auto" frameborder="0"></iframe></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#FFFFFF"><p>&nbsp;</p>
      <table width="100%" border="0">
        <tr>
          <td height="23"><div align="center">copy right 中国建设银行北京开发中心 测试与推广支持处 委托驻场运维小组</div></td>
        </tr>
        <tr>
          <td><div align="center">地址：北京市西城区莲花池东路106号汇融大厦 邮编：100334</div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>      
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
