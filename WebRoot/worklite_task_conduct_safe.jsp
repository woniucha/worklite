<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>发起安全检查</title>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td height="33">&nbsp;</td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="21%" height="29"><strong>任务标题：</strong></td>
      <td colspan="3"><label>关于2016年安保部安全大检查的通知</label></td>
    </tr>
    <tr>
      <td height="30"><strong>任务完成时间：</strong></td>
      <td width="14%"><label>2016-02-01</label></td>
      <td width="14%"><div align="center"><strong>检查结果复核：</strong></div></td>
      <td width="51%"><label>王毅</label></td>
    </tr>

    <tr>
      <td height="46"><strong>附件:</strong></td>
      <td colspan="3">1、关于安全检查模板</td>
    </tr>
    <tr>
      <td height="46"><strong>检查结果</strong></td>
      <td colspan="3"><label>
        <textarea name="textarea" cols="100"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="23"><strong>上传附件</strong></td>
      <td colspan="3"><input type="file" name="upload" /></td>
    </tr>
    <tr>
      <td height="25"><strong>上传文件名：</strong></td>
      <td colspan="3"><label>
        <input type="text" name="textfield3">
      </label></td>
    </tr>
    <tr>
      <td height="50"><strong>附件：</strong></td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4"><div align="center">
          <input type="submit" name="Submit" value="提交">
        &nbsp;
        <input type="reset" name="Submit2" value="重置">
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
