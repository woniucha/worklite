<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建会议通知</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-family: "微软雅黑"}
.STYLE4 {font-family: "微软雅黑"; color: #333333; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">

  <table width="100%" border="0" align="center">
    <tr height="2">
      <td></td>
    </tr>
    <tr>
      <td>
	  <form action="report!findByConditionForWeekly" method="post" target="self_bottom">
	  <table width="100%" border="0">
        <tr>
          <td width="11%"><div align="left"><span class="STYLE4">周报年份：</span></div></td>
          <td width="13%"><label>
            <select name="worklitereportweekly.rw_year">
              <option value="">请选择</option>
              <option value="2015">2015</option>
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
            </select>
          </label></td>
          <td width="13%"><div align="left"><span class="STYLE4">所属系统：</span></div></td>
          <td width="16%"><label>
           <select name="worklitereportweekly.rw_system">
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
          <td width="5%" class="STYLE4">上传人：</td>
          <td width="17%"><label>
            <input type="text" name="worklitereportweekly.rw_issue_person">
          </label></td>
          <td width="5%"><label>
            <input type="submit" name="Submit" value="开始查询">
			    <input type="hidden" name="pageNo" value="1" />
				<input type="hidden" name="pageSize" value="10" />
          </label></td>
          <td width="20%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
        <tr>
          <td><div align="left"><span class="STYLE4">周报提交起始日期：</span></div></td>
          <td><label>
            <input type="text" id="weekly_begin_date"  name="weekly_begin_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
          </label></td>
          <td><div align="left"><span class="STYLE4">周报提交创建截止日期：</span></div></td>
          <td colspan="5"><label>
          <input type="text" id="weekly_end_date"  name="weekly_end_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
          </label></td>
          </tr>
      </table>	  
	  </form>	  </td>
    </tr>
    
    <tr>
      <td><iframe name="self_bottom" width="100%" height="290" frameborder="0"></iframe></td>
    </tr>
  </table>

</body>
</html>
