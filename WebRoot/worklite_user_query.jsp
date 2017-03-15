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
    <td height="66" valign="top"><form id="form1" method="post" action="user!findByCondition" target="self_bottom">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="100%" colspan="5"><label></label>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="6%" height="41"><span class="STYLE2">用户姓名：</span></td>
                <td width="12%"><input type="text" name="workliteuserinfo.user_name" /></td>
                <td width="6%"><span class="STYLE2">所属公司：</span></td>
                <td width="20%">&nbsp;
                  <select name="workliteuserinfo.user_corporation">
                    <option value="">请选择</option>
                    <option>北京金迅融技术有限公司</option>
                    <option>北京宇信科技集团股份有限公司</option>
                    <option>上海安硕信息技术股份有限公司</option>
                    <option>北京中信网络科技股份有限公司</option>
                    <option>京北方信息技术股份有限公司</option>
                  </select>
               </td>
                <td width="6%"><span class="STYLE2">参加项目：</span></td>
                <td width="28%"><select name="workliteuserinfo.user_project">
                  <option value="">请选择项目</option>
                  <option>2016年村镇银行核心系统驻场运维服务</option>
                  <option>2016年村镇银行前置及周边系统驻场运维服务</option>
                  <option>2016年村镇银行信贷系统驻场运维服务</option>
                  <option>2016年网络学习系统驻场运维服务</option>
                  <option>2016年OA系统驻场运维服务</option>
                  <option>2016年邮件系统驻场运维服务</option>
                  <option>2016年法律、纪检、安保系统驻场运维服务</option>
                  <option>2016年IT管理类系统驻场运维服务</option>
                </select></td>
                <td width="4%"><label>
                  <input type="submit" name="Submit" value="查询" />
				  <input type="hidden" name="pageNo" value="1" />
				  <input type="hidden" name="pageSize" value="10" />
                </label></td>
                <td width="18%"><label>
                  <input type="reset" name="Submit2" value="重置" />
                </label></td>
              </tr>
            </table></td>
          </tr>
        
        <tr>
          <td colspan="5"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="6%"><span class="STYLE2">用户状态：</span></td>
              <td width="12%"><label>
                <select name="workliteuserinfo.user_status">
                  <option value="">请选择</option>
                  <option value="1">正常</option>
                  <option value="0">注销</option>
                </select>
              </label></td>
              <td width="6%" class="STYLE2">学历：</td>
              <td width="10%"><label>
                <select name="workliteuserinfo.user_education">
                  <option value="">请选择</option>
                  <option value="研究生">研究生</option>
                  <option value="本科">本科</option>
                </select>
              </label></td>
              <td width="5%" class="STYLE2">专业：</td>
              <td width="61%"><label>
                <input type="text" name="workliteuserinfo.user_specialty">
              </label></td>
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
