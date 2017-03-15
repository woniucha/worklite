<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" pageEncoding="utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询考勤记录</title>
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
    <td height="66" valign="top"><form id="form1" method="post" action="check!findByCondition" target="self_bottom">
      <table width="100%" border="0">
        <tr>
          <td width="100%" colspan="5"><label></label>
            <table width="100%" border="0">
              <tr>
                <td width="6%"><span class="STYLE2">姓名：</span></td>
                <td width="12%"><input type="text" name="checkdetailpersonal.check_name" /></td>
                <td width="4%"><span class="STYLE2">公司：</span></td>
                <td width="20%">&nbsp;
                  <select name="checkdetailpersonal.check_owner_institution">
                    <option value="">请选择</option>
                    <option>北京金迅融技术有限公司</option>
                    <option>北京宇信易诚科技有限公司</option>
                    <option>北京宇信科技集团股份有限公司</option>
                    <option>上海安硕信息技术股份有限公司</option>
                    <option>中信网络科技股份有限公司</option>
                    <option>京北方信息技术股份有限公司</option>
                    <option>天阳宏业科技股份有限公司</option>
                  </select></td>
                <td width="5%"><span class="STYLE2">项目：</span></td>
                <td width="26%"><select name="checkdetailpersonal.check_project">
                  <option value="">请选择项目</option>
                  <option>2016年建信村镇银行核心系统运维服务</option>
                  <option>2016年村镇银行前置及周边系统驻场运维服务项目</option>
                  <option>2016年村镇银行信贷系统驻场运维服务</option>
                  <option>2016年网络学习驻场运维服务</option>
                  <option>2016年办公自动化、外事信息管理系统驻场运维服务</option>
                  <option>2016年邮件系统驻场运维服务</option>
                  <option>2016年法律纪检安保系统驻场运维服务</option>
                  <option>2016年IT管理类系统驻场运维服务</option>
                </select></td>
                <td width="4%"><label>
                  <input type="submit" name="Submit" value="查询" />
				  <input type="hidden" name="pageNo" value="1" />
				  <input type="hidden" name="pageSize" value="10" />
                </label></td>
                <td width="23%"><label>
                  <input type="submit" name="Submit2" value="重置" />
                </label></td>
              </tr>
            </table></td>
          </tr>
        
        <tr>
          <td colspan="5"><table width="100%" border="0">
            <tr>
              <td width="6%"><span class="STYLE2">开始时间：</span></td>
              <td width="12%"><input type="text" id="checkdetailpersonal.check_begin_time"  name="checkdetailpersonal.check_begin_time" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
			  </td>
              <td width="6%"><span class="STYLE2">结束时间：</span></td>
              <td width="76%"><input type="text" id="checkdetailpersonal.check_end_time"  name="checkdetailpersonal.check_end_time" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
			  </td>
              </tr>
          </table></td>
          </tr>
      </table>
        </form></td>
  </tr>
  <tr>
    <td height="161" align="left" valign="top"><iframe name="self_bottom" width="100%" height="290" frameborder="0"></iframe></td>
  </tr>
</table>
</body>
</html>
