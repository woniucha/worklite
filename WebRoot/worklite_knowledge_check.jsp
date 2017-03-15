<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function issueAction(){
document.knowledge.action="knowledge!issueWorklite_knowledge";
document.knowledge.submit();
}
function rollbackAction(){
document.knowledge.action="knowledge!rollbackWorklite_knowledge";
document.knowledge.submit();
}
</script>
<title>审核知识</title>
</head>

<body topmargin="0" leftmargin="0">
<form name="knowledge" method="post">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="90%" border="0" align="center" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="130" height="25" bgcolor="#FFFFFF"><strong>知识编号：</strong></td>
          <td width="149" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_id"/>
		  <input name="workliteknowledge.kl_id" type="hidden" value="<s:property value="workliteknowledge.kl_id"/>">
		  <input name="workliteknowledge.kl_check_frequency" type="hidden" value="<s:property value="workliteknowledge.kl_check_frequency"/>">
		  </td>
          <td width="127" bgcolor="#FFFFFF"><strong>提交日期：</strong></td>
          <td width="150" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_commit_time"/></td>
          <td width="100" bgcolor="#FFFFFF"><strong>提交人：</strong></td>
          <td width="107" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_commit_person"/>
		  <input name="workliteknowledge.kl_commit_person" type="hidden" value="<s:property value="workliteknowledge.kl_commit_person"/>">
		  </td>
        </tr>
        
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>关联系统中文名：</strong></td>
          <td bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_system"/></td>
          <td width="127" bgcolor="#FFFFFF"><strong>关联系统英文简称：</strong></td>
          <td bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_system_alias"/></td>
          <td bgcolor="#FFFFFF"><strong>适用环境</strong>：</td>
          <td bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_enviroment"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>知识状态：</strong></td>
          <td bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_status"/></td>
          <td bgcolor="#FFFFFF"><strong>提交审核人：</strong></td>
          <td bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_check_person"/></td>
          <td bgcolor="#FFFFFF"><strong>审核人所属处室：</strong></td>
          <td bgcolor="#FFFFFF"></td>
        </tr>
        
        
        
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>知识标题：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_title"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件描述：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_appearance"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件原因：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_reason"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>解决方案：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_solution"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>事件紧急操作步骤：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_operate_program"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>回复话术：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_reply_strategy"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>示例：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_sample"/></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>备注：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><s:property value="workliteknowledge.kl_comment"/></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><strong>审核意见：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            <textarea name="workliteknowledge.kl_check_suggest" cols="150"></textarea>
          </label></td>
        </tr>
        <tr>
          <td height="35" colspan="6" bgcolor="#FFFFFF"><label>
              <div align="center">
                <input type="button"  value="审核通过并发布"  onClick="issueAction()">
                <input type="button"  value="审核不通过"  onClick="rollbackAction()">
              </div>
            </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
