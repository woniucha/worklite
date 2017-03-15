<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>发起安全检查</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        
        <tr>
          <td width="8%" height="25" bgcolor="#3399CC"><div align="center" class="STYLE1">任务编号</div></td>
          <td width="12%" bgcolor="#3399CC"><div align="center" class="STYLE1">处理编号</div></td>
          <td width="7%" bgcolor="#3399CC"><div align="center" class="STYLE1">处理人</div></td>
          <td width="7%" bgcolor="#3399CC"><div align="center" class="STYLE1">状态</div></td>
          <td width="38%" bgcolor="#3399CC"><div align="center" class="STYLE1">检查结果</div></td>
          <td width="12%" bgcolor="#3399CC"><div align="center" class="STYLE1">附件</div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center" class="STYLE1">复核结果</div></td>
          <td width="10%" bgcolor="#3399CC"><div align="center" class="STYLE1">复核</div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">T0000001</div></td>
          <td bgcolor="#FFFFFF"><div align="center">U00001T000001</div></td>
          <td bgcolor="#FFFFFF"><div align="center">周正</div></td>
          <td bgcolor="#FFFFFF"><div align="center">处理中</div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF">
            <div align="center">
              <input type="submit" name="Submit" value="通过">
              <input type="submit" name="Submit2" value="退回">
              </div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">T000001</div></td>
          <td bgcolor="#FFFFFF"><div align="center">U00002T000001</div></td>
          <td bgcolor="#FFFFFF"><div align="center">孟令聪</div></td>
          <td bgcolor="#FFFFFF"><div align="center">复核中</div></td>
          <td bgcolor="#FFFFFF"><div align="center">已按要求提交附件</div></td>
          <td bgcolor="#FFFFFF"><div align="center">1、检查结果</div></td>
          <td bgcolor="#FFFFFF"><div align="center">通过</div></td>
          <td bgcolor="#FFFFFF"><div align="center">
            <input type="submit" name="Submit3" value="通过">
            <input type="submit" name="Submit22" value="退回">
          </div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">·</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>

        <tr>
          <td colspan="8" bgcolor="#FFFFFF"><label>
              <div align="center">
                <input type="submit" name="Submit4" value="提交">
              </div>
            </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
