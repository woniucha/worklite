<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建一般通知</title>
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
    </tr>
    <tr>
      <td width="11%" height="44">通知标题：</td>
      <td width="89%"><label>
        <input type="text" name="textfield">
      </label></td>
    </tr>
    <tr>
      <td>接收人：</td>
      <td><table width="100%" border="0">
        <tr>
          <td><label>
            <input type="checkbox" name="checkbox" value="checkbox">
          </label></td>
          <td>孟令聪</td>
          <td><input type="checkbox" name="checkbox3" value="checkbox"></td>
          <td>王莹</td>
          <td><input type="checkbox" name="checkbox5" value="checkbox"></td>
          <td>刘莎莎</td>
          <td><input type="checkbox" name="checkbox7" value="checkbox"></td>
          <td>徐晓东</td>
          <td><input type="checkbox" name="checkbox9" value="checkbox"></td>
          <td>崔晓峰</td>
          <td><input type="checkbox" name="checkbox11" value="checkbox"></td>
          <td>宋穆阳</td>
          <td><input type="checkbox" name="checkbox12" value="checkbox"></td>
          <td>王毅</td>
          <td><input type="checkbox" name="checkbox13" value="checkbox"></td>
          <td>高跃武</td>
          <td><input type="checkbox" name="checkbox14" value="checkbox"></td>
          <td>邓青军</td>
          <td><input type="checkbox" name="checkbox15" value="checkbox"></td>
          <td>姚琴</td>
        </tr>
        <tr>
          <td><input type="checkbox" name="checkbox2" value="checkbox"></td>
          <td>周正</td>
          <td><input type="checkbox" name="checkbox4" value="checkbox"></td>
          <td>宋石金</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>    </td>
    </tr>
    <tr>
      <td>通知内容：</td>
      <td><label>
        <textarea name="textarea" cols="80"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="50"><strong>上传附件：</strong></td>
      <td><input type="file" name="upload" /></td>
    </tr>
    <tr>
      <td height="50"><strong>上传文件名：</strong></td>
      <td><label>
        <input type="text" name="textfield3">
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="提交">
        &nbsp;
        <input type="reset" name="Submit2" value="重置">
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
