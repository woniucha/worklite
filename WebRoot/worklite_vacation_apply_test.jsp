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
</head>

<body topmargin="0" leftmargin="0">
<form action="vacation!applyVacation" method="post">
<p>&nbsp;</p>
<table width="66%" border="0" align="center" cellspacing="0" bgcolor="#999999">
  
  <tr>
    <td height="30" colspan="5" bgcolor="#999999"><span class="STYLE3">&nbsp;<span class="STYLE6">&nbsp;</span></span><span class="STYLE7">请假人基本信息</span></td>
    </tr>
  <tr>
    <td width="11%" rowspan="2" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="20%" bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">申请人姓名：</span></div></td>
    <td width="17%" bgcolor="#FFFFFF">陈祝军
	<input name="worklitevacation.vacation_person" type="hidden" value="周正"/>"></td>
    <td width="14%" bgcolor="#FFFFFF"><div align="right" class="STYLE4">职务：</div></td>
    <td width="38%" height="35" bgcolor="#FFFFFF">中级工程师
	<input name="worklitevacation.vacation_post" type="hidden" value="中级工程师"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">所属公司：</span></div></td>
    <td bgcolor="#FFFFFF">中信网络科技股份有限公司
	<input name="worklitevacation.vacation_corporation" type="hidden" value="中信网络科技股份有限公司"></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">所属项目：</div></td>
    <td height="32" bgcolor="#FFFFFF">2016年高效行政类管理类系统驻场运维项目
	<input name="worklitevacation.vacation_project" type="hidden" value="2016年高效行政类系统驻场运维项目"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">本年度已请假天数：</span></div></td>
    <td bgcolor="#FFFFFF">2 Days</td>
    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">公休假天数：</span></div></td>
    <td height="26" bgcolor="#FFFFFF">5 Days</td>
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
    <td bgcolor="#FFFFFF"><select name="worklitevacation.vacation_type" >
      <option>请选择假期类型</option>
      <option>年假</option>
      <option>事假</option>
      <option>病假</option>
      <option>婚假</option>
      <option>产假</option>
      <option>工伤假</option>
      <option>其他假</option>
    </select></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">假期天数：</div></td>
    <td height="28" bgcolor="#FFFFFF"><label>
      <input type="text"name="worklitevacation.vacation_day_num">
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="30" bgcolor="#FFFFFF"><div align="right" class="STYLE4">开始日期：</div></td>
    <td bgcolor="#FFFFFF"><label>
      <input type="text" name="worklitevacation.vacation_startdate">
    </label></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">结束日期：</div></td>
    <td height="30" bgcolor="#FFFFFF"><label>
      <input type="text" name="worklitevacation.vacation_enddate">
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">公司审核人：</div></td>
    <td bgcolor="#FFFFFF"><label>
      <select name="worklitevacation.vacation_corporation_verify">
        <option>请选择</option>
        <option>杨俭英</option>
        <option>胡强</option>
        <option>姚琴</option>
      </select>
    </label></td>
    <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">行方审核人：</div></td>
    <td height="28" valign="middle" bgcolor="#FFFFFF"><label></label>
      <table width="100%" border="0">
        <tr>
          <td width="44%"><select name="worklitevacation.vacation_bank_verify">
            <option>请选择</option>
            <option>陈祝军</option>
            <option>任劼</option>
            <option>李树欣</option>
          </select></td>
          <td width="24%"><span class="STYLE4">优先级：</span></td>
          <td width="32%"><label>
            <select name="worklitevacation.vacation_priority">
              <option>请选择</option>
              <option>特急</option>
              <option>紧急</option>
              <option>一般</option>
            </select>
          </label></td>
        </tr>
      </table></td>
  </tr>
  
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td height="20" bgcolor="#FFFFFF"><div align="right" class="STYLE4">请假原因：</div></td>
    <td height="51" colspan="3" bgcolor="#FFFFFF"><label>
      <textarea name="worklitevacation.vacation_reason" cols="80"></textarea>
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
