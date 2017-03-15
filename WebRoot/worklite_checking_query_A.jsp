<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" pageEncoding="utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>请假查询</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<style type="text/css">
<!--
.STYLE2 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="100%" border="0">
  
  <tr>
    <td height="66" valign="top"><form id="form1" method="post" action="vacation!findByPage" target="self_bottom">
      <table width="100%" border="0">
        <tr>
          <td width="100%" colspan="5"><label></label>
            <table width="100%" border="0">
              <tr>
                <td width="5%"><span class="STYLE2">请假人：</span></td>
                <td width="13%"><input type="text" name="worklitevacation.vacation_person" /></td>
                <td width="9%"><span class="STYLE2">请假人所属公司：</span></td>
                <td width="20%">&nbsp;
                  <select name="worklitevacation.vacation_corporation">
                    <option value="">请选择公司</option>
                    <option>北京金迅融技术有限公司</option>
                    <option>北京宇信科技集团股份有限公司</option>
                    <option>上海安硕信息技术股份有限公司</option>
                    <option>北京中信网络科技股份有限公司</option>
                    <option>京北方信息技术股份有限公司</option>
                    <option>天阳宏业科技股份有限公司</option>
                  </select></td>
                <td width="7%"><span class="STYLE2">请假单状态：</span></td>
                <td width="19%"><select name="worklitevacation.vacation_status">
                
                  <option value="">请选择请假单状态</option>
                  <option>公司审核</option>
                  <option>公司审核通过</option>
                  <option>公司审核不通过</option>
                  <option>行方审核</option>
                  <option>审核通过</option>
                  <option>行方审核不通过</option>          
                </select></td>
                <td width="4%"><label>
                  <input type="submit" name="Submit" value="查询" />
				  <input type="hidden" name="pageNo" value="1" />
				  <input type="hidden" name="pageSize" value="10" />
                </label></td>
                <td width="23%"><label>
                  <input type="reset" name="Submit2" value="重置" />
                </label></td>
              </tr>
            </table></td>
          </tr>
        
        <tr>
          <td colspan="5"><table width="100%" border="0">
            <tr>
            <td width="7%"><span class="STYLE2">请假单编号：</span></td>
                <td width="12%"><input type="text" name="worklitevacation.vacation_id" /></td>
              <td width="6%"><span class="STYLE2">&nbsp;开始时间：</span></td>
              <td width="11%"><input type="text" id="worklitevacation.vacation_startdate"  name="worklitevacation.vacation_startdate" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
			  </td>
              <td width="7%"><span class="STYLE2">&nbsp;结束时间：</span></td>
              <td width="57%"><input type="text" id="worklitevacation.vacation_enddate"    name="worklitevacation.vacation_enddate" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
			  </td>
              </tr>
          </table></td>
          </tr>
      </table>
        </form></td>
  </tr>
  <tr>
    <td height="200" align="left" valign="top"><iframe name="self_bottom" width="100%" height="250" frameborder="0"></iframe></td>
  </tr>
</table>
</body>
</html>
