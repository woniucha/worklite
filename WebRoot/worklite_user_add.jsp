<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>增加用户信息</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<script type="text/javascript" language="javascript" charset="GBK" >

function addAction(){

var user_name=document.getElementById("workliteuserinfo.user_name");
if (user_name.value == ""||user_name.value == null)
{
alert("请填写用户名！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,10}$/;
if(!reg.test(user_name.value)){
alert("用户名必须为中文！");
user_name.focus();

return false;
}
///////////////////////////////////////////
var account_name=document.getElementById("workliteuserinfo.user_account");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写用户UASS账号！");
account_name.focus();
return false;
}
var filter=/^[.a-z0-9]{0,10}$/;
if(!filter.test(account_name.value)){
alert("用户UASS账号不能为中文！");
account_name.focus();

return false;
}
///////////////////////////////////////////////////////////

var task_begin_date=document.getElementById("worklitetask.task_begin_date");
if (task_begin_date.value == ""||task_begin_date.value == null){
alert("请填写出生日期！");
task_begin_date.focus();
return false;
}


var  date=new Date();
var datenow=date.getYear()+'-'+(date.getMonth()+1)+'-'+date.getDate();
var v=task_begin_date.value;
var a1=v.split("-");
var b1=datenow.split("-");
var a2=new Date(a1[0],a1[1],a1[2]);
var b2=new Date(b1[0],b1[1],b1[2]);

if(Date.parse(a2)>Date.parse(b2)){
alert("填写出生日期错误！");
return false;
}


var filter=/^[.a-z0-9]{0,10}$/;
if(!filter.test(account_name.value)){
alert("用户UASS账号不能为中文！");
account_name.focus();

return false;
}


////////////////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_place');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写籍贯！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,25}$/;
if(!reg.test(user_name.value)){
alert("用户籍贯为中文且不超过25位！");
user_name.focus();

return false;
}
///////////////////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_nation');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写民族！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,5}$/;
if(!reg.test(user_name.value)){
alert("用户籍贯为中文且不超过5位！");
user_name.focus();

return false;
}
///////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_specialty');
if (user_name.value == ""||user_name.value == null)
{
alert("请填专业！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,5}$/;
if(!reg.test(user_name.value)){
alert("用户专业为中文且不超过10位！");
user_name.focus();

return false;
}
/////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_school');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写毕业院校！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,20}$/;
if(!reg.test(user_name.value)){
alert("毕业院校为中文且不超过20位！");
user_name.focus();

return false;
}
//////////////////////////////////////////

var account_name=document.getElementById("workliteuserinfo.user_mail");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写个人邮箱！");
account_name.focus();
return false;
}
var filter=/^[.A-Za-z0-9]{0,30}$/;
if(!filter.test(account_name.value)){
alert("个人邮箱不能为中文！");
account_name.focus();

return false;
}
//////////////////////////////////////////////////////

var account_name=document.getElementById("workliteuserinfo.user_phone");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写手机号码！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,13}$/;
if(!filter.test(account_name.value)){
alert("手机号码不能为中文！");
account_name.focus();

return false;
}
//////////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_address');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写住址！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,20}$/;
if(!reg.test(user_name.value)){
alert("住址校为中文且不超过30位！");
user_name.focus();

return false;
}
/////////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_corporation');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写所属公司！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,25}$/;
if(!reg.test(user_name.value)){
alert("所属公司为中文且不超过25位！");
user_name.focus();

return false;
}
///////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_department');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写所属部门！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,25}$/;
if(!reg.test(user_name.value)){
alert("所属部门为中文且不超过25位！");
user_name.focus();

return false;
}
//////////////////////////////////////////////////////////////
var account_name=document.getElementById("workliteuserinfo.user_deptphone");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写联系电话！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,13}$/;
if(!filter.test(account_name.value)){
alert("联系电话不能为中文！");
account_name.focus();

return false;
}
////////////////////////////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_post');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写职务！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,15}$/;
if(!reg.test(user_name.value)){
alert("职务门为中文且不超过15位！");
user_name.focus();

return false;
}
////////////////////////
var account_name=document.getElementById("workliteuserinfo.user_poststart");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写职务起止时间！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,15}$/;
if(!filter.test(account_name.value)){
alert("职务起止时间不能为中文！");
account_name.focus();

return false;
}
////////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_position');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写职称！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,15}$/;
if(!reg.test(user_name.value)){
alert("职称为中文且不超过15位！");
user_name.focus();

return false;
}
////////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_project_manager');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写项目经理！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,5}$/;
if(!reg.test(user_name.value)){
alert("项目经理为中文且不超过5位！");
user_name.focus();

return false;
}
//////////////////////////////////////////////

var account_name=document.getElementById("workliteuserinfo.user_project_manager_phone");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写电话！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,13}$/;
if(!filter.test(account_name.value)){
alert("电话不能为中文！");
account_name.focus();

return false;
}
///////////////////////////////////////////////////

var account_name=document.getElementById("workliteuserinfo.user_project_manager_mail");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写邮箱！");
account_name.focus();
return false;
}
var filter=/^[.A-Za-z0-9\-]{0,25}$/;
if(!filter.test(account_name.value)){
alert("邮箱不能为中文！");
account_name.focus();

return false;
}
////////////////////////////////////////
var user_name=document.getElementById('user_project_inspector');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写项目总监！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,10}$/;
if(!reg.test(user_name.value)){
alert("项目总监为中文且不超过10位！");
user_name.focus();

return false;
}
////////////////////////////////////////////////////

var account_name=document.getElementById("user_project_inspector_phone");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写电话！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,13}$/;
if(!filter.test(account_name.value)){
alert("电话不能为中文！");
account_name.focus();

return false;
}
/////////////////////////////////////////
var account_name=document.getElementById("workliteuserinfo.user_project_inspector_mail");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写邮箱！");
account_name.focus();
return false;
}
var filter=/^[.A-Za-z0-9\-]{0,25}$/;
if(!filter.test(account_name.value)){
alert("邮箱不能为中文！");
account_name.focus();

return false;
}
////////////////////////////////////////////
var user_name=document.getElementById('user_project_market');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写项目销售！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,10}$/;
if(!reg.test(user_name.value)){
alert("项目销售为中文且不超过10位！");
user_name.focus();

return false;
}
////////////////////////////////////
var account_name=document.getElementById("user_project_market_phone");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写电话！");
account_name.focus();
return false;
}
var filter=/^[0-9-]{0,13}$/;
if(!filter.test(account_name.value)){
alert("电话不能为中文！");
account_name.focus();

return false;
}
///////////////////////////////////////////////////////
var account_name=document.getElementById("user_project_market_mail");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写邮箱！");
account_name.focus();
return false;
}
var filter=/^[.A-Za-z0-9\-]{0,25}$/;
if(!filter.test(account_name.value)){
alert("邮箱不能为中文！");
account_name.focus();

return false;
}
////////////////////////////////////////////////////////////////////////
var account_name=document.getElementById("workliteuserinfo.user_identification");
if (account_name.value == ""||user_name.value == null)
{
alert("请填写身份证号！");
account_name.focus();
return false;
}
var filter=/^[.A-Za-z0-9\-]{0,25}$/;
if(!filter.test(account_name.value)){
alert("身份证号不能为中文！");
account_name.focus();

return false;
}
///////////////////////////////////
var user_name=document.getElementById('workliteuserinfo.user_project');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写参加项目！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,15}$/;
if(!reg.test(user_name.value)){
alert("参加项目售为中文且不超过15位！");
user_name.focus();

return false;
}
/////////////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_status');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写用户状态！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,2}$/;
if(!reg.test(user_name.value)){
alert("用户状态为中文且不超过2位！");
user_name.focus();

return false;
}
///////////////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_learnexp');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写学习经历！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,250}$/;
if(!reg.test(user_name.value)){
alert("学习经历为中文且不超过250位！");
user_name.focus();

return false;
}
/////////////////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_experience');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写工作经历！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,250}$/;
if(!reg.test(user_name.value)){
alert("工作经历为中文且不超过250位！");
user_name.focus();

return false;
}
///////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_skill');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写技能特长！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,250}$/;
if(!reg.test(user_name.value)){
alert("技能特长为中文且不超过250位！");
user_name.focus();

return false;
}
///////////////////////////////////////////

var user_name=document.getElementById('workliteuserinfo.user_interest');
if (user_name.value == ""||user_name.value == null)
{
alert("请填写兴趣爱好！");
user_name.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5]{0,50}$/;
if(!reg.test(user_name.value)){
alert("兴趣爱好为中文且不超过50位！");
user_name.focus();

return false;
}









return true;
}


</script>
<style type="text/css">
<!--
.STYLE1 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form name="userinfo" method="post"  action="user!addUser">
<!--<form name="userinfo" method="post" onsubmit="return addAction();" action="user!addUser">
  -->
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="80%" border="0" align="center" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        <tr>
          <td width="10%" height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户姓名：</span></td>
          <td width="21%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								name="workliteuserinfo.user_name" id="workliteuserinfo.user_name" /></label></td>
          <td width="18%" bgcolor="#FFFFFF"><span class="STYLE1">用户UASS账户：</span></td>
          <td width="17%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_account" id="workliteuserinfo.user_account" />
          </label></td>
          <td width="11%" bgcolor="#FFFFFF"><span class="STYLE1">性别：</span></td>
          <td width="23%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_sex" id="workliteuserinfo.user_sex">
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </label></td>
        </tr>
                <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户登录名称：</span></td>
		   <td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;<input type="text" id="workliteuserlogin.user_name" name="workliteuserlogin.user_name" />
      </label></td>
        <!--  <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" id="workliteuserinfo.user_birthday"  name="workliteuserinfo.user_birthday" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"  id="workliteuserinfo.user_birthday"/>
          </label></td>-->
          <td bgcolor="#FFFFFF"><span class="STYLE1">密码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserlogin.user_pwd" id="workliteuserlogin.user_pwd" />
          </label></td>
          <td bgcolor="#FFFFFF"></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">出生年月：</span></td>
		   <td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;<input type="text" id="worklitetask.task_begin_date" name="worklitetask.task_begin_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </label></td>
        <!--  <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" id="workliteuserinfo.user_birthday"  name="workliteuserinfo.user_birthday" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"  id="workliteuserinfo.user_birthday"/>
          </label></td>-->
          <td bgcolor="#FFFFFF"><span class="STYLE1">籍贯：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_place" id="workliteuserinfo.user_place" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">民族：</span></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_nation" id"workliteuserinfo.user_nation" />
          </td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">政治面貌：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_political">
              <option value="群众">群众</option>
              <option value="中共党员">中共党员</option>
              <option value="其他民主党派">其他民主党派</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学历：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_education">
              <option value="本科">本科</option>
              <option value="研究生">研究生</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">专业：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_specialty" id="workliteuserinfo.user_specialty" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">毕业院校：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_school"  id="workliteuserinfo.user_school"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">毕业时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" id="workliteuserinfo.user_graduate_age"  name="workliteuserinfo.user_graduate_age" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
			</label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作年限：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_work_age">
              <option>2年内</option>
              <option>2年</option>
              <option>3年</option>
              <option>4年</option>
              <option>5年</option>
              <option>6年</option>
              <option>7年</option>
              <option>8年</option>
              <option>9年</option>
              <option>10年以上(含10年)</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">个人邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_mail"  id="workliteuserinfo.user_mail"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">手机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_phone"  id="workliteuserinfo.user_phone"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">座机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_telephone" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">住址：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_address"  id="workliteuserinfo.user_address"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮编：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_postcode"  id="workliteuserinfo.user_postcode"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">方位：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_education">
              <option>二环内</option>
              <option>二环至三环内</option>
              <option>三环至四环内</option>
              <option>四环至五环内</option>
              <option>五环至六环内</option>
              <option>六环外</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">所属公司：</span></td>
          <td bgcolor="#FFFFFF">
          <select name="workliteuserinfo.user_corporation" >
            <option value="">请选择</option>
                    <option>北京金迅融技术有限公司</option>
                    <option>北京宇信科技集团股份有限公司</option>
                    <option>上海安硕信息技术股份有限公司</option>
                    <option>北京中信网络科技股份有限公司</option>
                    <option>京北方信息技术股份有限公司</option>
          </select>
          </td>
          
          <td bgcolor="#FFFFFF"><span class="STYLE1">所属部门：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_department"  id="workliteuserinfo.user_department"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">联系电话:</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_deptphone" id="workliteuserinfo.user_deptphone" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">职务：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_post"  id="workliteuserinfo.user_post"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职务起始时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_poststart" id="workliteuserinfo.user_poststart" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职称：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_position"  id="workliteuserinfo.user_position"/>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目经理：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_manager" id="workliteuserinfo.user_project_manager" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_manager_phone"  id="workliteuserinfo.user_project_manager_phone"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_manager_mail"  id="workliteuserinfo.user_project_manager_mail"/>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目总监：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_inspector" id="user_project_inspector" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_inspector_phone" id="user_project_inspector_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_inspector_mail"  id="workliteuserinfo.user_project_inspector_mail"/>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目销售：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_market" id="user_project_market" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_market_phone" id="user_project_market_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_project_market_mail" id="user_project_market_mail" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">身份证号码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								
								name="workliteuserinfo.user_identification"  id="workliteuserinfo.user_identification"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">参加项目：</span></td>
          <td bgcolor="#FFFFFF">
          <SELECT name="workliteuserinfo.user_project" id="workliteuserinfo.user_project">
                  <option value="">请选择项目</option>
                  <option>2016年村镇银行核心系统驻场运维服务</option>
                  <option>2016年村镇银行前置及周边系统驻场运维服务</option>
                  <option>2016年村镇银行信贷系统驻场运维服务</option>
                  <option>2016年网络学习系统驻场运维服务</option>
                  <option>2016年OA系统驻场运维服务</option>
                  <option>2016年邮件系统驻场运维服务</option>
                  <option>2016年法律、纪检、安保系统驻场运维服务</option>
                  <option>2016年IT管理类系统驻场运维服务</option>
          </SELECT>
          </td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">用户状态：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;
								<SELECT name="workliteuserinfo.user_status" id="workliteuserinfo.user_status">
								<option value="1" selected="selected">正常</option>
								<option value="0">注销</option>
								</SELECT>
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学习经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<textarea name="workliteuserinfo.user_learnexp" id="workliteuserinfo.user_learnexp"
			 
			 cols="120"></textarea>
          </label></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_experience" di="workliteuserinfo.user_experience"
			   cols="120"></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">技能特长：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_skill" id="workliteuserinfo.user_skill"
			  cols="120"></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">兴趣爱好：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_interest" id="workliteuserinfo.user_interest"
			  cols="120"></textarea></td>
          </tr>
        <tr>
          <td colspan="6" bgcolor="#FFFFFF"><label></label>
            <label>
            <div align="center">
              <input type="submit" id="submit" value="提交" />
            </div>
            </label></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
