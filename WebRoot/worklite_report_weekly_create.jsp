<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<script type="text/javascript">
function addAction(){
if(document.form1.rw_title.value ==""){
alert("请填写周报标题");
document.form1.rw_title.focus();
return(false);
}

var filter=/^.{0,50}$/;
if(!filter.test(document.form1.rw_title.value)){
alert("周报标题不能超过50个字");
document.form1.rw_title.focus();
document.form1.rw_title.select();
return(false);
}

if(document.form1.weekly_start_date.value ==""){
alert("请填写周报周期开始时间");
document.form1.weekly_start_date.focus();
return(false);
}

if(document.form1.weekly_stop_date.value ==""){
alert("请填写周报周期结束时间");
document.form1.weekly_stop_date.focus();
return(false);
}

if((document.form1.weekly_start_date.value)>=(document.form1.weekly_stop_date.value)){
alert("开始时间必须小于结束时间");
document.form1.weekly_start_date.focus();
return(false);
}

if(document.form1.rm_year.value ==""){
alert("请选择周报年份");
document.form1.rm_year.focus();
return(false);
}

if(document.form1.rw_system.value ==""){
alert("请选择所属系统");
document.form1.rw_system.focus();
return(false);
}

if(document.form1.rw_check_person.value ==""){
alert("请选择审核人");
document.form1.rw_check_person.focus();
return(false);
}

if(document.form1.file.value ==""){
alert("请上传文件");
document.form1.file.focus();
return(false);
}

document.form1.action="report!addReportWeekly";
document.form1.submit();
}
</script>
<title>上传周报</title>
<style type="text/css">
<!--
.STYLE3 {font-family: "微软雅黑"; font-weight: bold; color: #666666; }
.STYLE4 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form name="form1" action="report!addReportWeekly" method="post" enctype="multipart/form-data" theme="simple">
  <p>&nbsp;</p>
  <table width="80%" border="0" align="center" cellspacing="0" bgcolor="#999999">
    <tr>
      <td width="12%" height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">周报标题：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF"><input name="worklitereportweekly.rw_title" id="rw_title" type="text" size="120" ><span id="checkTask_title"/><!--onBlur="checkName();" -->
      </td>
    </tr>
    <tr>
      <td width="12%" height="10" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3"></span></div></td>
      <td colspan="5" bgcolor="#FFFFFF">例如：4月第一周网络学习系统驻场运维工作周报
      </td>
    </tr>
    <tr>
      <td height="31" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">周报周期：</span></div></td>
      <td width="15%" bgcolor="#FFFFFF"><label><input type="text" id="weekly_start_date"  name="weekly_start_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </label></td>
      <td width="2%" bgcolor="#FFFFFF">-</td>
      <td width="15%" bgcolor="#FFFFFF"><input type="text" id="weekly_stop_date"  name="weekly_stop_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/></td>
      <td width="8%" bgcolor="#FFFFFF"><div align="right" class="STYLE3">周报年份：</div></td>
      <td width="48%" bgcolor="#FFFFFF"><select name="worklitereportweekly.rw_year" id="rm_year">
              <option value="">请选择</option>
              <option value="2015">2015</option>
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
      </select></td>
    </tr>
    <tr>
      <td height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE3"><span class="STYLE4">所属系统：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF"><label>
        <select name="worklitereportweekly.rw_system" id="rw_system">
          <option value="">请选择</option>
          <option value="建信村镇银行核心系统">建信村镇银行核心系统</option>
          <option value="建信村镇银行信贷系统">建信村镇银行信贷系统</option>
          <option value="建信村镇银行前置及周边系统">建信村镇银行前置及周边系统</option>
          <option value="网络学习系统">网络学习系统</option>
          <option value="IT管理类系统">IT管理类系统</option>
          <option value="OA系统">OA系统</option>
          <option value="高效行政类系统">高效行政类系统</option>
          <option value="邮件系统">邮件系统</option>
          <option value="移动OA系统">移动OA系统</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">审核人：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF"><label>      
          <select name="worklitereportweekly.rw_check_person" id="rw_check_person">
            <option value="">请选择</option>
            <option value="陈祝军">陈祝军</option>
            <option value="王翀">王翀</option>
          </select>
      </label></td>
    </tr>
    <tr>
      <td height="50" valign="top" bgcolor="#FFFFFF" class="STYLE3"><div align="right">上传附件：</div></td>
      <td colspan="5" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0">
        <tr>
          <td width="49%" height="31" valign="top" id="td"><input name="file" type="file" size="50" label="file" /></td>
          <td width="51%" valign="top">&nbsp;</td>
        </tr>
        
      </table></td>
    </tr>
    
    <tr>
      <td height="46" colspan="6" bgcolor="#FFFFFF">
        <div align="center">
          <label>
          <input type="button" name="Submit" value="提交周报" onClick="addAction()">
          </label>
      &nbsp;        </div></td>
    </tr>
  </table>
</form>
</body>
</html>
