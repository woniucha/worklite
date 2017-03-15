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
	font-size: 14px;
}
.STYLE16 {font-family: "微软雅黑"; font-size: 12px; color: #FFFFFF; }
.STYLE18 {color: #000000}
.STYLE19 {font-family: "微软雅黑"; font-size: 12px; color: #000000; }
.STYLE20 {font-size: 12px; font-family: "微软雅黑";}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="token!addToken">
  <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0"> 
    <tr>
      <td height="53" colspan="4"><div align="center" class="STYLE1 STYLE12 STYLE13">增加图书</div></td>
    </tr>
    <tr>
      <td width="222" height="30"><div align="right" class="STYLE16 STYLE18">
        <div align="right">令牌序列号：</div>
      </div></td>
      <td width="169">
        <input type="text" name="worklitetoken.token_id" />      </td>
      <td width="120" class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌UASS用户：</div>
      </div></td>
      <td width="265"><label>
        <input type="text" name="worklitetoken.token_uass_name" />
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">令牌静态口令：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pwd" />
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌6位PIN码：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pin" />
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">令牌所属地：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_location" />
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌申请时间：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_reg_time" />
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">令牌所有者：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_owner" />
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌归属处室：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_office" />
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">备注：</div>
      </div></td>
      <td><label>
        <textarea name="worklitetoken.token_remarks" cols="30"></textarea>
      </label></td>
      <td><div align="center" class="STYLE18">
        <div align="right"><span class="STYLE20">令牌状态：</span></div>
      </div></td>
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
      <td height="50" colspan="4">
          <div align="center">
            <input type="submit" name="Submit" value="提交" />
            &nbsp;&nbsp;<input type="reset" name="Submit2" value="重置" />     
          </div></td>
    </tr>
  </table>
</form>
</body>
</html>
