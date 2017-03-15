<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" pageEncoding="UTF-8" %>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE4 {font-family: "微软雅黑"; font-size: 18px; }
.STYLE12 {font-size: 24px}
.STYLE13 {
	font-family: "微软雅黑";
	font-size: 12px;
}
.STYLE16 {font-family: "微软雅黑"; font-size: 12px; color: #FFFFFF; }
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="token!addToken">
  <table width="60%" border="0" align="center">
    <tr>
      <td height="53" colspan="4"><div align="center" class="STYLE1 STYLE12 STYLE13">增加令牌</div></td>
    </tr>
    <tr>
      <td height="1" colspan="4" bgcolor="#666666"></td>
    </tr>
    <tr>
      <td width="161" height="50" bgcolor="#999999"><div align="right" class="STYLE16">令牌序列号：</div></td>
      <td width="122">
        <input type="text" name="worklitetoken.token_id" />      </td>
      <td width="152" bgcolor="#999999" class="STYLE4"><div align="right" class="STYLE16">令牌UASS用户：</div></td>
      <td width="212"><label>
        <input type="text" name="worklitetoken.token_uass_name" />
      </label></td>
    </tr>
    <tr>
      <td height="50" bgcolor="#999999"><div align="right" class="STYLE16">令牌静态口令：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pwd" />
      </label></td>
      <td bgcolor="#999999" class="STYLE4"><div align="right" class="STYLE16">令牌6位PIN码：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pin" />
      </label></td>
    </tr>

    <tr>
      <td height="50" bgcolor="#999999"><div align="right" class="STYLE16">令牌所属地：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_location" />
      </label></td>
      <td bgcolor="#999999" class="STYLE4"><div align="right" class="STYLE16">令牌申请时间：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_reg_time" />
      </label></td>
    </tr>

    <tr>
      <td height="50" bgcolor="#999999"><div align="right" class="STYLE16">令牌所有者：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_owner" />
      </label></td>
      <td bgcolor="#999999" class="STYLE4"><div align="right" class="STYLE16">令牌归属处室：</div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_office" />
      </label></td>
    </tr>

    <tr>
      <td height="50" bgcolor="#999999"><div align="right" class="STYLE16">备注：</div></td>
      <td><label>
        <textarea name="worklitetoken.token_remarks" cols="30"></textarea>
      </label></td>
      <td bgcolor="#999999"><span class="STYLE16">令牌状态</span></td>
      <td><label>
        <select name="worklitetoken.token_status">
          <option>入库</option>
          <option>领出</option>
          <option>注销</option>
          <option>退还</option>
        </select>
      </label></td>
    </tr>

    <tr>
      <td colspan="4"><label>
        <div align="center">
          <input type="submit" name="Submit" value="提交" />
        </div>
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
