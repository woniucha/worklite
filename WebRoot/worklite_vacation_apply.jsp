<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>q请假申请</title>
<style type="text/css">
<!--
.STYLE3 {
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
.STYLE4 {font-family: "微软雅黑"}
.STYLE6 {font-size: 12px}
.STYLE7 {font-size: 12px; color: #FFFFFF; font-family: "微软雅黑"; }
-->
</style>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<script type="text/javascript" language="javascript" charset="GBK" >

function addAction(){



var vacation_type=document.getElementById("worklitevacation.vacation_type");
if(vacation_type.value==0){
alert("假期类型为必选项！");
vacation_type.focus();
return false;

}
/////////////////////////////

var account_name=document.getElementById("worklitevacation.vacation_day_num");
if (account_name.value == ""||account_name.value == null)
{
alert("请填写假期天数！");
account_name.focus();
return false;
}
var filter=/^[0-9,0.5]{0,3}$/;
if(!filter.test(account_name.value)){
alert("假期天数只能为数字且不超过4位！");
account_name.focus();

return false;
}
//////////////////////////////////

var vacation_startdate=document.getElementById("worklitetask.vacation_startdate");
if (vacation_startdate.value == ""||vacation_startdate.value == null){
alert("请填写假期开始日期！");
vacation_startdate.focus();
return false;
}
var vacation_enddate=document.getElementById("worklitetask.vacation_enddate");
if (vacation_enddate.value == ""||vacation_enddate.value == null){
alert("请填写假期结束日期！");
vacation_enddate.focus();
return false;
}
if(vacation_enddate.value<vacation_startdate.value){
alert('结束时间不能大于开始时间');
return false;
}


///////////////////////////////////

//////////////////////////////////////

var vacation_type=document.getElementById("worklitevacation.vacation_corporation_verify");
if(vacation_type.value==0){
alert("公司审核人为必选项！");
vacation_type.focus();
return false;

}
/////////////////////////////////////////////
var vacation_type=document.getElementById("worklitevacation.vacation_bank_verify");
if(vacation_type.value==0){
alert("行方审核人为必选项！");
vacation_type.focus();
return false;

}
/////////////////////////////////////////
var vacation_priority=document.getElementById("worklitevacation.vacation_priority");
if(vacation_priority.value==0){
alert("优先级为必选项！");
vacation_priority.focus();
return false;

}
///////////////////////////////////////////
var vacation_reason=document.getElementById('worklitevacation.vacation_reason');
if (vacation_reason.value == ""||vacation_reason.value == null)
{
alert("请填写请假原因！");
vacation_reason.focus();
return false;
}
var reg=/^[\u4E00-\u9FA5,a-z,A-Z,0-9,_-]{1,50}$/;
if(!reg.exec(vacation_reason.value)){
alert("请假原因不超过50位！");
vacation_reason.focus();
return false;
}

return true;
}
</script>
</head>

<body topmargin="0" leftmargin="0">
<form action="vacation!applyVacation" onSubmit="return addAction();" method="post">
<p>&nbsp;</p>
<table width="66%" border="0" align="center" cellspacing="0" bgcolor="#999999">
  
  <tr>
    <td height="30" colspan="5" bgcolor="#999999"><span class="STYLE3">&nbsp;<span class="STYLE6">&nbsp;</span></span><span class="STYLE7">请假人基本信息</span><input name="workliteuserinfo.user_id" type="hidden" value="<s:property value="workliteuserinfo.user_id"/>"></td>
    </tr>
  <tr>
    <td width="11%" rowspan="2" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="20%" bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">申请人姓名：</span></div></td>
    <td width="17%" bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_name"/>
	<input name="workliteuserinfo.user_name" type="hidden" value="<s:property value="workliteuserinfo.user_name"/>"></td>
    <td width="14%" bgcolor="#FFFFFF"><div align="right" class="STYLE4">职务：</div></td>
    <td width="38%" height="35" bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_post"/>
	<input name="workliteuserinfo.user_post" type="hidden" value="<s:property value="workliteuserinfo.user_post"/>"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">所属公司：</span></div></td>
    <td bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_corporation"/>
	<input name="workliteuserinfo.user_corporation" type="hidden" value="<s:property value="workliteuserinfo.user_corporation"/>"></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">所属项目：</div></td>
    <td height="32" bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_project"/>
	<input name="workliteuserinfo.user_project" type="hidden" value="<s:property value="workliteuserinfo.user_project"/>"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">本年度已请假天数：</span></div></td>
    <td bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_already_day_num"/>
	<input name="workliteuserinfo.user_already_day_num" type="hidden" value="<s:property value="workliteuserinfo.user_already_day_num"/>
	"> Days</td>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">公休假天数：</span></div></td>
    <td height="26" bgcolor="#FFFFFF"><s:property value="workliteuserinfo.user_vacation"/>
	<input name="workliteuserinfo.user_vacation" type="hidden" value="<s:property value="workliteuserinfo.user_vacation"/>"> Days</td>
  </tr>
  
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="17" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="5" bgcolor="#999999" class="STYLE7">&nbsp;&nbsp;申请假期信息</td>
    </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="28" bgcolor="#FFFFFF"><div align="right" class="STYLE4">假期类型：</div></td>
    <td bgcolor="#FFFFFF"><select name="worklitevacation.vacation_type" id="worklitevacation.vacation_type">
      <option value="">请选择假期类型</option>
      <option value="年假">年假</option>
      <option value="事假">事假</option>
      <option value="病假">病假</option>
      <option value="婚假">婚假</option>
      <option value="产假">产假</option>
      <option value="工伤假">工伤假</option>
      <option value="其他假">其他假</option>
    </select></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">假期天数：</div></td>
    <td height="28" bgcolor="#FFFFFF"><label>
      <input type="text" name="worklitevacation.vacation_day_num" id="worklitevacation.vacation_day_num">
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="30" bgcolor="#FFFFFF"><div align="right" class="STYLE4">开始日期：</div></td>
	<td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;<input type="text" id="worklitetask.vacation_startdate" name="worklitevacation.vacation_startdate" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </label></td>
    
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">结束日期：</div></td>
	<td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;<input type="text" id="worklitetask.vacation_enddate" name="worklitevacation.vacation_enddate" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </label></td>
      </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">公司审核人：</div></td>
    <td bgcolor="#FFFFFF"><label>
      <select name="worklitevacation.vacation_corporation_verify" id="worklitevacation.vacation_corporation_verify">
        <option value="">请选择</option>
        <option value="杨俭英">杨俭英</option>
        <option value="胡强">胡强</option>
        <option value="姚琴">姚琴</option>
        <option value="赵蕊">赵蕊</option>
		<option value="何涛">何涛</option>
		<option value="戴晖">戴晖</option>
      </select>
    </label></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">行方审核人：</div></td>
    <td height="28" valign="middle" bgcolor="#FFFFFF"><label></label>
      <table width="100%" border="0">
        <tr>
          <td width="44%"><select name="worklitevacation.vacation_bank_verify" id="worklitevacation.vacation_bank_verify">
            <option value="">请选择</option>
            <option value="陈祝军">陈祝军</option>
            <option value="王翀">王翀</option>
          </select></td>
          <td width="24%"><span class="STYLE4">优先级：</span></td>
          <td width="32%"><label>
            <select name="worklitevacation.vacation_priority" id="worklitevacation.vacation_priority">
              <option value="">请选择</option>
              <option value="特急">特急</option>
              <option value="紧急">紧急</option>
              <option value="一般">一般</option>
            </select>
          </label></td>
        </tr>
      </table></td>
  </tr>
  
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="20" bgcolor="#FFFFFF"><div align="right" class="STYLE4">请假原因：</div></td>
    <td height="51" colspan="3" bgcolor="#FFFFFF"><label>
      <textarea name="worklitevacation.vacation_reason" id="worklitevacation.vacation_reason" cols="80"></textarea>
    </label></td>
    </tr>
  <tr>
    <td height="35" colspan="5" bgcolor="#FFFFFF">
	  <div align="center">
  <input name="submit" type="submit" value="提交">
  &nbsp;&nbsp;
	    <input name="reset" type="reset" value="重置">	
        </div></td>
    </tr>
</table>
</form>
</body>
</html>
