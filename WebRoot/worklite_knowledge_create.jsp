<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建知识</title>
<script type="text/javascript">
function addAction(){
document.knowledge.action="knowledge!addWorklite_knowledge";
document.knowledge.submit();
}


function saveAction(){
document.knowledge.action="knowledge!saveWorklite_knowledge";
document.knowledge.submit();
}
</script>
<style type="text/css">
<!--
.STYLE1 {
	font-family: "微软雅黑";
	font-weight: bold;
}
.STYLE2 {font-family: "微软雅黑"}
-->
</style>
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
          <td width="15%" height="25" bgcolor="#FFFFFF"><span class="STYLE1">关联系统中文名：</span></td>
          <td width="19%" bgcolor="#FFFFFF">
            <select name="workliteknowledge.kl_system" id="kl_system">
            <option value="">请选择</option>
            <option value="法律系统">法律系统</option>
            <option value="纪检系统">纪检系统</option>
            <option value="安保系统">安保系统</option>
            <option value="村行核心系统">村行核心系统</option>
            <option value="村行前置系统">村行前置系统</option>
            <option value="村行同城系统">村行同城系统</option>
            <option value="村行柜面系统">村行柜面系统</option>
            <option value="村行报表系统">村行报表系统</option>
            <option value="村行信贷系统">村行信贷系统</option>
            <option value="网络学习系统">网络学习系统</option>
            <option value="邮件系统">邮件系统</option>
            <option value="移动OA系统">移动OA系统</option>
            <option value="IT管理平台系统">IT管理平台系统</option>
            <option value="项目管理系统">项目管理系统</option>
            <option value="OA系统">OA系统</option>
            <option value="组内工作管理平台">组内工作管理平台</option>
          </select></td>
          <td width="14%" bgcolor="#FFFFFF"><span class="STYLE1">关联系统英文简称：</span></td>
          <td colspan="3" bgcolor="#FFFFFF">
          <select name="workliteknowledge.kl_system_alias" id="kl_system_alias">
            <option value="">请选择</option>
            <option value="LMIS">LMIS</option>
            <option value="SIMIS">SIMIS</option>
            <option value="SWMS">SWMS</option>
            <option value="RBBS">RBBS</option>
            <option value="RBRS">RBRS</option>
            <option value="RBISS">RBISS</option>
            <option value="RBICS">RBICS</option>
            <option value="RBBLS">RBBLS</option>
            <option value="RBLS">RBLS</option>
            <option value="NLS">NLS</option>
            <option value="MAIL">MAIL</option>
            <option value="MOAS">MOAS</option>
            <option value="ITWPS">ITWPS</option>
            <option value="PMS">PMS</option>
            <option value="OA">OA</option>
            <option value="WOKRLITE">WOKRLITE</option>
          </select>
          </td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><span class="STYLE1">审核人：</span></td>
          <td bgcolor="#FFFFFF"><input name="workliteknowledge.kl_check_person" id="kl_check_person" type="text" size="30"></td>
          <td bgcolor="#FFFFFF"><span class="STYLE2"><strong>适用环境</strong>：</span></td>
          <td width="15%" bgcolor="#FFFFFF"><select name="workliteknowledge.kl_enviroment" id="kl_enviroment">
            <option value="">请选择</option>
            <option value="测试环境">测试环境</option>
            <option value="生产环境">生产环境</option>
            <option value="数据迁移环境">数据迁移环境</option>
            <option value="对账环境">对账环境</option>
            <option value="生产和测试环境">生产和测试环境</option>
            <option value="办公环境">办公环境</option>
          </select></td>
          <td width="11%" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><strong>优先级：</strong></div></td>
          <td width="26%" bgcolor="#FFFFFF"><label>
            <select name="workliteknowledge.kl_priority" id="kl_priority">
              <option value="">请选择</option>
              <option value="特急">特急</option>
              <option value="紧急">紧急</option>
              <option value="普通">普通</option>
            </select>
          </label></td>
        </tr>
        
        
        <tr>
          <td height="25" bgcolor="#FFFFFF"><span class="STYLE1">知识标题：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            <input name="workliteknowledge.kl_title" id="kl_title" type="text" size="147">
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">事件描述：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            <textarea name="workliteknowledge.kl_appearance" id="kl_appearance" cols="150"></textarea>
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">事件原因：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_reason" id="kl_reason" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">解决方案：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_solution" id="kl_solution" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">事件紧急操作步骤：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_operate_program" id="kl_operate_program" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">回复话术：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_reply_strategy" id="kl_reply_strategy" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">示例：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_sample" id="kl_sample" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">备注：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="workliteknowledge.kl_comment" id="kl_comment" cols="150"></textarea></td>
        </tr>
        <tr>
          <td height="35" colspan="6" bgcolor="#FFFFFF">
              <div align="center">
                <input type="button" value="保存为草稿" onClick="saveAction()">&nbsp;&nbsp;
                <input type="button" value="提交审核" onClick="addAction()">
				</div></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
