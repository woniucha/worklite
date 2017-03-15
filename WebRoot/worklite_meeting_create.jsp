<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建会议通知</title>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td width="11%" height="28"><strong>会议标题：</strong></td>
      <td colspan="5"><label>
        <input type="text" name="textfield">
      </label></td>
    </tr>
    <tr>
      <td height="30"><strong>开始时间：</strong></td>
      <td width="18%"><label>
        <input type="text" name="textfield4">
      </label></td>
      <td width="9%"><strong>结束时间：</strong></td>
      <td><label>
        <input type="text" name="textfield2">
      </label></td>
      <td><strong>会议地点：</strong></td>
      <td><label>
        <input type="text" name="textfield9">
      </label></td>
    </tr>
    <tr>
      <td height="31"><strong>会议主持：</strong></td>
      <td><input type="text" name="textfield5"></td>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td height="33"><strong>会议联系人：</strong></td>
      <td><label>
        <input type="text" name="textfield6">
      </label></td>
      <td><strong>联系电话：</strong></td>
      <td width="15%"><label>
        <input type="text" name="textfield7">
      </label></td>
      <td width="8%"><strong>邮箱：</strong></td>
      <td width="39%"><label>
        <input type="text" name="textfield8">
      </label></td>
    </tr>
    <tr>
      <td><strong>接收人：</strong></td>
      <td colspan="5"><table width="100%" border="0">
          <tr>
            <td><input type="checkbox" name="checkbox6" value="checkbox"></td>
            <td>全部</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
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
      <td><strong>会议议题：</strong></td>
      <td colspan="5"><label>
        <textarea name="textarea" cols="80"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="30"><strong>上传附件：</strong></td>
      <td colspan="5"><input type="file" name="upload" /></td>
    </tr>
    <tr>
      <td height="50"><strong>上传文件名：</strong></td>
      <td colspan="5"><label>
        <input type="text" name="textfield3">
      </label></td>
    </tr>
    <tr>
      <td colspan="6"><div align="center">
          <input type="submit" name="Submit" value="提交">
        &nbsp;
        <input type="reset" name="Submit2" value="重置">
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
