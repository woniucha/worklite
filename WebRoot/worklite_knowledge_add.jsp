<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function addAction(){
if (document.knowledge.kl_system.value == "")
{
alert("请填写系统中文名称！");
document.knowledge.kl_system.focus();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,20}$/;
if (!filter.test(document.knowledge.kl_system.value)) {
alert("系统中文名称填写不正确,请重新填写！长度不超过20个字，注意不要使用空格。");
document.knowledge.kl_system.focus();
document.knowledge.kl_system.select();
return (false);
}//<!--只能用中文，长度20个字以内，不能有空格，不为空>

if (document.knowledge.kl_system_alias.value =="")
{
alert("请填写英文系统简称！");
document.knowledge.kl_system_alias.focus();
return (false);
}

var filter=/^[.A-Za-z_-]{0,10}$/;
if (!filter.test(document.knowledge.kl_system_alias.value)) {
alert("系统英文简称填写不正确,请重新填写！可使用的字符为不超过10个字的大写英文，注意不要使用空格。");
document.knowledge.kl_system_alias.focus();
document.knowledge.kl_system_alias.select();
return (false);
}//<!--只能用英文，长度10个字以内，不能有空格，不为空>

if (document.knowledge.kl_check_person.value =="")
{
alert("请填写审核人！");
document.knowledge.kl_check_person.focus();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,5}$/;
if (!filter.test(document.knowledge.kl_check_person.value)) {
alert("审核人填写不正确,请重新填写！可使用的字符为不超过5个字，注意不要使用空格。");
document.knowledge.kl_check_person.focus();
document.knowledge.kl_check_person.select();
return (false);
}//<!--长度5个字以内，不能有空格，不为空>

if (document.knowledge.kl_enviroment.value =="")
{
alert("请选择适用环境！");
document.knowledge.kl_enviroment.focus();
return (false);
}//<!--不为空（现在的情况是不会弄）>

if (document.knowledge.kl_priority.value =="")
{
alert("请选择优先级！");
document.knowledge.kl_priority.focus();
return (false);
}//<!--不为空（现在的情况是不会弄）>

if (document.knowledge.kl_title.value =="")
{
alert("请填写知识标题！");
document.knowledge.kl_title.focus();
return (false);
}

var filter=/^[^\s*]{0,49}[^\s*]$/;
if (!filter.test(document.knowledge.kl_title.value)) {
alert("知识标题填写不正确,请重新填写！可使用的字符为不超过50个字，注意不要使用空格。");
document.knowledge.kl_title.focus();
document.knowledge.kl_title.select();
return (false);
}//<!--长度50个字以内，不能有空格，不为空>

if (document.knowledge.kl_appearance.value =="")
{
alert("请填写事件描述！");
document.knowledge.kl_appearance.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_appearance.value)) {
alert("事件描述填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_appearance.focus();
document.knowledge.kl_appearance.select();
return (false);
}//<!--长度200个字以内，不为空>

if (document.knowledge.kl_reason.value =="")
{
alert("请填写事件原因！");
document.knowledge.kl_reason.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_reason.value)) {
alert("事件原因填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_reason.focus();
document.knowledge.kl_reason.select();
return (false);
}//<!--长度200个字以内，不为空>

if (document.knowledge.kl_solution.value =="")
{
alert("请填写解决方案！");
document.knowledge.kl_solution.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_solution.value)) {
alert("解决方案填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_solution.focus();
document.knowledge.kl_solution.select();
return (false);
}//<!--长度200个字以内，不为空>

if (!filter.test(document.knowledge.kl_operate_program.value)) {
alert("事件紧急操作步骤填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_operate_program.focus();
document.knowledge.kl_operate_program.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_reply_strategy.value)) {
alert("回复话术填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_reply_strategy.focus();
document.knowledge.kl_reply_strategy.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_sample.value)) {
alert("示例填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_sample.focus();
document.knowledge.kl_sample.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_comment.value)) {
alert("备注填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_comment.focus();
document.knowledge.kl_comment.select();
return (false);
}//<!--长度200个字以内>

document.knowledge.action="knowledge!addWorklite_knowledge";
document.knowledge.submit();
}


function saveAction(){
if (document.knowledge.kl_system.value == "")
{
alert("请填写系统中文名称！");
document.knowledge.kl_system.focus();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,20}$/;
if (!filter.test(document.knowledge.kl_system.value)) {
alert("系统中文名称填写不正确,请重新填写！长度不超过20个字，注意不要使用空格。");
document.knowledge.kl_system.focus();
document.knowledge.kl_system.select();
return (false);
}//<!--只能用中文，长度20个字以内，不能有空格，不为空>

if (document.knowledge.kl_system_alias.value =="")
{
alert("请填写英文系统简称！");
document.knowledge.kl_system_alias.focus();
return (false);
}

var filter=/^[.A-Za-z_-]{0,10}$/;
if (!filter.test(document.knowledge.kl_system_alias.value)) {
alert("系统英文简称填写不正确,请重新填写！可使用的字符为不超过10个字的大写英文，注意不要使用空格。");
document.knowledge.kl_system_alias.focus();
document.knowledge.kl_system_alias.select();
return (false);
}//<!--只能用英文，长度10个字以内，不能有空格，不为空>

if (document.knowledge.kl_check_person.value =="")
{
alert("请填写审核人！");
document.knowledge.kl_check_person.focus();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,5}$/;
if (!filter.test(document.knowledge.kl_check_person.value)) {
alert("审核人填写不正确,请重新填写！可使用的字符为不超过5个字，注意不要使用空格。");
document.knowledge.kl_check_person.focus();
document.knowledge.kl_check_person.select();
return (false);
}//<!--长度5个字以内，不能有空格，不为空>

if (document.knowledge.kl_enviroment.value =="")
{
alert("请选择适用环境！");
document.knowledge.kl_enviroment.focus();
return (false);
}//<!--不为空（现在的情况是不会弄）>

if (document.knowledge.kl_priority.value =="")
{
alert("请选择优先级！");
document.knowledge.kl_priority.focus();
return (false);
}//<!--不为空（现在的情况是不会弄）>

if (document.knowledge.kl_title.value =="")
{
alert("请填写知识标题！");
document.knowledge.kl_title.focus();
return (false);
}

var filter=/^[^\s*]{0,49}[^\s*]$/;
if (!filter.test(document.knowledge.kl_title.value)) {
alert("知识标题填写不正确,请重新填写！可使用的字符为不超过50个字，注意不要使用空格。");
document.knowledge.kl_title.focus();
document.knowledge.kl_title.select();
return (false);
}//<!--长度50个字以内，不能有空格，不为空>

if (document.knowledge.kl_appearance.value =="")
{
alert("请填写事件描述！");
document.knowledge.kl_appearance.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_appearance.value)) {
alert("事件描述填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_appearance.focus();
document.knowledge.kl_appearance.select();
return (false);
}//<!--长度200个字以内，不为空>

if (document.knowledge.kl_reason.value =="")
{
alert("请填写事件原因！");
document.knowledge.kl_reason.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_reason.value)) {
alert("事件原因填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_reason.focus();
document.knowledge.kl_reason.select();
return (false);
}//<!--长度200个字以内，不为空>

if (document.knowledge.kl_solution.value =="")
{
alert("请填写解决方案！");
document.knowledge.kl_solution.focus();
return (false);
}

var filter=/^.{0,200}$/;
if (!filter.test(document.knowledge.kl_solution.value)) {
alert("解决方案填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_solution.focus();
document.knowledge.kl_solution.select();
return (false);
}//<!--长度200个字以内，不为空>

if (!filter.test(document.knowledge.kl_operate_program.value)) {
alert("事件紧急操作步骤填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_operate_program.focus();
document.knowledge.kl_operate_program.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_reply_strategy.value)) {
alert("回复话术填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_reply_strategy.focus();
document.knowledge.kl_reply_strategy.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_sample.value)) {
alert("示例填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_sample.focus();
document.knowledge.kl_sample.select();
return (false);
}//<!--长度200个字以内>

if (!filter.test(document.knowledge.kl_comment.value)) {
alert("备注填写不正确,请重新填写！可使用的字符不超过200个字。");
document.knowledge.kl_comment.focus();
document.knowledge.kl_comment.select();
return (false);
}//<!--长度200个字以内>

document.knowledge.action="knowledge!saveWorklite_knowledge";
document.knowledge.submit();
}
</script>
<title>创建知识</title>
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
          <td width="19%" bgcolor="#FFFFFF"><label>
            <input name="workliteknowledge.kl_system" id="kl_system" type="text" size="30">
          </label></td>
          <td width="14%" bgcolor="#FFFFFF"><span class="STYLE1">关联系统英文简称：</span></td>
          <td colspan="3" bgcolor="#FFFFFF"><input type="text" name="workliteknowledge.kl_system_alias" id="kl_system_alias"></td>
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
