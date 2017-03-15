<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>发布知识</title>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="90%" border="0" align="center" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="15%" height="25" bgcolor="#FFFFFF"><strong>知识编号：</strong></td>
          <td width="18%" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="13%" bgcolor="#FFFFFF"><strong>提交日期：</strong></td>
          <td width="17%" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="12%" bgcolor="#FFFFFF"><strong>提交人：</strong></td>
          <td width="25%" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        
        <tr>
          <td width="15%" height="25" bgcolor="#FFFFFF"><strong>关联系统中文名：</strong></td>
          <td width="18%" bgcolor="#FFFFFF"><label></label></td>
          <td width="13%" bgcolor="#FFFFFF"><strong>关联系统英文简称：</strong></td>
          <td width="17%" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="12%" bgcolor="#FFFFFF"><strong>适用环境</strong>：</td>
          <td width="25%" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>提交审核人：</strong></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF"><strong>审核人所属处室：</strong></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF"><strong>审核通过日期：</strong></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>审核失败次数：</strong></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF"><strong>知识状态：</strong></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        
        
        
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>知识标题：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件描述：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><label></label></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件原因：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>解决方案：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件紧急操作步骤：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>回复话术：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>示例：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>备注：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>审核意见：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><label></label></td>
        </tr>
        <tr>
          <td height="35" colspan="6" bgcolor="#FFFFFF"><label>
              <div align="center">
                <input type="submit" name="Submit2" value="发布">
              </div>
            </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
