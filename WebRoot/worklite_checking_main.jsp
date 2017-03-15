<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/main.css" />
<title>考勤管理-首页</title>
<style type="text/css">
<!--
.STYLE2 {color: #FFFFFF; font-family: "微软雅黑"; }
.STYLE3 {color: #FFFFFF}
.STYLE4 {color: #FFFFFF; font-family: "微软雅黑"; font-weight: bold; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="29" valign="top"><table width="100%" border="0" bgcolor="#999999">
      <tr>
        <td width="3%"><span class="STYLE2"><strong>&gt;&gt;</strong></span></td>
        <td width="9%" height="30"><a href="worklite_checking_import.jsp" target="bottom" class="STYLE4">导入考勤记录</a></td>
        <td width="9%"><a href="worklite_checking_query.jsp" target="bottom" class="STYLE4">查询考勤记录</a></td>
        <td width="7%"><a href="vacation!queryUserInfo" target="bottom" class="STYLE4" >请假申请</a></td>
        <td width="7%"><a href="worklite_checking_query_A.jsp" target="bottom" class="STYLE4">请假查询</a></td>
        <td width="8%"><span class="STYLE2">工作量统计</span></td>
        <td><span class="STYLE3"></span></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="400" valign="top"><iframe id="bottom" name="bottom" height="100%" width="100%" scrolling="auto" frameborder="0"></iframe></td>
  </tr>
</table>
</body>
</html>
