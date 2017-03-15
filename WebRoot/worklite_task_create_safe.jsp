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
      <td width="14%" height="22"><strong>任务标题：</strong></td>
      <td colspan="3"><label>
        <input type="text" name="textfield">
      </label></td>
    </tr>
    <tr>
      <td height="23"><strong>任务完成时间：</strong></td>
      <td width="17%"><label>
        <input type="text" name="textfield2">
      </label></td>
      <td width="12%"><div align="center"><strong>检查结果复核：</strong></div></td>
      <td width="57%"><label>
        <select name="select">
          <option>请选择复核人</option>
          <option>王毅</option>
          <option>宋石金</option>
          <option>徐晓东</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="64"><strong>承办人：</strong></td>
      <td colspan="3"><table width="100%" border="0">
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
      </table></td>
    </tr>
    <tr>
      <td height="46"><strong>任务描述</strong></td>
      <td colspan="3"><label>
        <textarea name="textarea" cols="100"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="38"><strong>上传附件</strong></td>
      <td colspan="3"><input type="file" name="upload" /></td>
    </tr>
    <tr>
      <td height="22"><strong>上传文件名：</strong></td>
      <td colspan="3"><label>
        <input type="text" name="textfield3">
      </label></td>
    </tr>
    <tr>
      <td height="50"><strong>附件：</strong></td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">
        <div align="center">
  <input type="submit" name="Submit" value="提交">
  &nbsp;
          
          <input type="reset" name="Submit2" value="重置">
        <a href="worklite_task_conduct_safe.jsp" target="_self">        提交</a></div></td>
    </tr>
  </table>
</form>
</body>
</html>
