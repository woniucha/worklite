<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>令牌管理</title>
<style type="text/css">
<!--
.STYLE5 {
	font-family: "微软雅黑";
	font-size: 14px;
	color: #FFFFFF;
}
-->
</style>
</head>

<body>
<p>&nbsp;</p>
<table width="80%" border="0" align="center" bgcolor="#999999">
  <tr>
    <td height="100"><p align="center" class="STYLE5"><font color="white">
                              <c:if
									test="${requestScope.message!=null}"> ${requestScope.message}</c:if>
                            </font>，您请继续其他操作！！！！</p>    </td>
  </tr>
</table>
</body>
</html>
