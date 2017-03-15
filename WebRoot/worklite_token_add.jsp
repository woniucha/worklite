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
<script type="text/javascript">
function addAction(){
if (document.form1.token_uass_name.value == "")
{
alert("请填写令牌UASS名称！");
document.form1.token_uass_name.focus();
document.form1.token_uass_name.select();
return (false);
}

var filter=/^[^\u4E00-\u9FA5_]{0,20}$/;
if (!filter.test(document.form1.token_uass_name.value)) {
alert("令牌UASS名称填写不正确,请重新填写！长度不超过20个字，注意不要使用中文");
document.form1.token_uass_name.focus();
document.form1.token_uass_name.select();
return (false);
}

if (document.form1.token_pwd.value == "")
{
alert("请填写令牌静态口令！");
document.form1.token_pwd.focus();
document.form1.token_pwd.select();
return (false);
}

var filter=/^[^\u4E00-\u9FA5]{0,20}$/;
if (!filter.test(document.form1.token_pwd.value)) {
alert("静态口令填写不正确,请重新填写！长度不超过20个字，注意不要使用中文");
document.form1.token_pwd.focus();
document.form1.token_pwd.select();
return (false);
}

if (document.form1.token_pin.value == "")
{
alert("请填写令牌6位PIN码！");
document.form1.token_pin.focus();
document.form1.token_pin.select();
return (false);
}

var filter=/^[^\u4E00-\u9FA5]{6}$/;
if (!filter.test(document.form1.token_pin.value)) {
alert("令牌6位PIN码填写不正确,请重新填写！长度不超过6个字，注意不要使用中文");
document.form1.token_pin.focus();
document.form1.token_pin.select();
return (false);
}

if (document.form1.token_location.value == "")
{
alert("请选择令牌所属地！");
document.form1.token_location.focus();
return (false);
}

if (document.form1.token_reg_time.value == "")
{
alert("请填写令牌申请时间，谢谢！");
document.form1.token_reg_time.focus();
return (false);
}

if (document.form1.token_owner.value =="")
{
alert("请填写令牌所有者！");
document.form1.token_owner.focus();
document.form1.token_owner.select();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,5}$/;
if (!filter.test(document.form1.token_owner.value)) {
alert("令牌所有者填写不正确,请重新填写！可使用的字符为不超过5个字，注意不要使用空格。");
document.form1.token_owner.focus();
document.form1.token_owner.select();
return (false);
}

if (document.form1.token_office.value =="")
{
alert("请填写令牌归属处室！");
document.form1.token_office.focus();
document.form1.token_office.select();
return (false);
}

if (document.form1.token_root.value == "")
{
alert("请填写令牌权限！");
document.form1.token_root.focus();
document.form1.token_root.select();
return (false);
}

var filter=/^[\u4E00-\u9FA5]{0,10}$/;
if (!filter.test(document.form1.token_office.value)) {
alert("令牌归属处室填写不正确,请重新填写！可使用的字符为不超过10个字，注意不要使用空格。");
document.form1.token_office.focus();
document.form1.token_office.select();
return (false);
}

var filter=/^.{0,50}$/;
if (!filter.test(document.form1.token_remarks.value)) {
alert("备注填写不正确,请重新填写！可使用的字符不超过50个字。");
document.form1.token_remarks.focus();
document.form1.token_remarks.select();
return (false);
}

document.form1.action="token!addToken";
document.form1.submit();
}
function saveAction(){
document.form1.action="token!addToken";
document.form1.submit();
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>令牌入库</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
</head>

<body>
<form id="form1" name="form1" method="post" action="token!addToken">
  <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0"> 
    <tr>
      <td height="53" colspan="4"><div align="center" class="STYLE1 STYLE12 STYLE13">增加令牌</div></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE16 STYLE18">
          <div align="right">令牌序列号：</div>
      </div></td>
      <td><input type="text" name="worklitetoken.token_no" id="token_no" /></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
          <div align="right"></div>
      </div></td>
      <td><label></label></td>
    </tr>
    <tr>
      <td width="222" height="30"><div align="right" class="STYLE16 STYLE18">
        <div align="right">令牌UASS用户：</div>
      </div></td>
      <td width="169"><input type="text" name="worklitetoken.token_uass_name" id="token_uass_name" /></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌权限：</div>
      </div></td> 
       <td><label>
        <select name="worklitetoken.token_root" id="token_root">
          <option value="">请选择</option>
          <option value="生产环境">生产环境</option>
          <option value="迁移环境">迁移环境</option>
          <option value="演练环境">演练环境</option>
          <option value="生产&&迁移">生产&&迁移</option>
          <option value="生产&&演练">生产&&演练</option>
          <option value="迁移&&演练">迁移&&演练</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">令牌静态口令：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pwd" id="token_pwd" />
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌6位PIN码：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_pin" id="token_pin" />
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">令牌所属地：</div>
      </div></td>
      <td><label>
        <select name="worklitetoken.token_location" id="token_location">
          <option value="">请选择</option>
          <option value="北京数据中心">北京数据中心</option>
          <option value="武汉数据中心">武汉数据中心</option>
        </select>
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">令牌申请时间：</div>
      </div></td>
      <td><label>
		<input type="text" id="token_reg_time"  name="worklitetoken.token_reg_time" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE19">
          <div align="right">令牌所有者：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_owner" id="token_owner"/>
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
          <div align="right">令牌归属处室：</div>
      </div></td>
      <td><label>
        <select name="worklitetoken.token_office" id="token_office">
              <option value="">请选择</option>
              <option value="开发一处">开发一处</option>
              <option value="开发二处">开发二处</option>
              <option value="开发三处">开发三处</option>
              <option value="委托研发管理处">委托研发管理处</option>
              <option value="技术管理处">技术管理处</option>
              <option value="需求分析处">需求分析处</option>
              <option value="项目处">项目处</option>
              <option value="测试与推广支持处">测试与推广支持处</option>
              <option value="功能集成测试处">功能集成测试处</option>
              <option value="非功能集成测试处">非功能集成测试处</option>
              <option value="测试管理处">测试管理处</option>
              <option value="测试环境服务管理处">测试环境服务管理处</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE19">
          <div align="right">应用系统：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_system" id="token_system"/>
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
          <div align="right">令牌所有人手机号：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_phone" id="worklitetoken.token_phone"/>
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">申请请求单编号：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitetoken.token_request" id="token_request"/>
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">注销请求单编号：</div>
      </div></td>
      <td><label>
      <input type="text" name="worklitetoken.token_logout" id="worklitetoken.token_logout"/>
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">备注：</div>
      </div></td>
      <td colspan="3"><label>
        <textarea name="worklitetoken.token_remarks" id="token_remarks" cols="80"></textarea>
      </label></td>
    </tr>

    <tr>
      <td height="50" colspan="4">
          <div align="center">
            <input type="button" name="Submit" value="提交" onClick="addAction()"/>
            &nbsp;&nbsp;<input type="reset" name="Submit2" value="重置" />     
          </div></td>
    </tr>
  </table>
</form>
</body>
</html>
