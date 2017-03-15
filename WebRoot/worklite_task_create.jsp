<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建任务</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-family: "微软雅黑";
	font-weight: bold;
}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
<table width="80%" border="0" align="center">
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td height="35">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><div align="right">假期类型：</div></td>
    <td width="3%" valign="top">&nbsp;</td>
    <td width="56%" height="50" valign="top"><label>
      <select name="select">
        <option>请选择假期类型</option>
        <option>年假</option>
        <option>事假</option>
        <option>病假</option>
        <option>婚假</option>
        <option>产假</option>
        <option>工伤假</option>
        <option>其他假</option>
      </select>
    </label></td>
    </tr>
  <tr>
    <td valign="top"><div align="right">假期天数：</div></td>
    <td valign="top">&nbsp;</td>
    <td height="51" valign="top"><label>
      <input type="text" name="textfield2">
    </label></td>
    </tr>
  <tr>
    <td width="41%" valign="top"><div align="right">开始日期：</div></td>
    <td valign="top">&nbsp;</td>
    <td height="47" valign="top"><label>
      <input type="text" name="textfield3">
    </label></td>
    </tr>
  <tr>
    <td valign="top"><div align="right">结束日期：</div></td>
    <td valign="top">&nbsp;</td>
    <td height="47" valign="top"><label>
      <input type="text" name="textfield4">
    </label></td>
    </tr>
  
  <tr>
    <td valign="top"><div align="right">请假原因：</div></td>
    <td valign="top">&nbsp;</td>
    <td height="59" valign="top"><label>
      <textarea name="textarea" cols="80"></textarea>
    </label></td>
  </tr>
  <tr>
    <td height="35" colspan="3">
	  <div align="center">
  <input name="submit" type="submit" value="提交">
  &nbsp;&nbsp;
	    <input name="reset" type="reset" value="重置">	
        </div></td>
    </tr>
</table>
</form>
</body>
</html>
