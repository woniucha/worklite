<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/main.css" />
<title>图书管理主页</title>
<style type="text/css">
<!--
.STYLE5 {color: #FFFFFF; font-weight: bold; font-family: "微软雅黑"; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0" height="200">
  <tr>
    <td height="29" valign="top"><table width="100%" border="0" bgcolor="#999999">
      <tr>
        <td width="3%"><span class="STYLE5">&gt;&gt;</span></td>
        <td width="7%" height="32"><span class="STYLE5"><a href="worklite_book_add.jsp" target="bottom">增加图书</a></span></td>
        <td width="90%" height="20"><span class="STYLE5"><a href="worklite_book_query.jsp" target="bottom">查询维护</a></span></td>
      </tr>
    </table>	</td>
  </tr>
  <tr>
    <td height="400" valign="top"><iframe id="bottom" name="bottom" height="100%" width="100%" scrolling="auto" frameborder="0"></iframe></td>
  </tr>
</table>
</body>
</html>
