<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询知识</title>
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
	  <form action="knowledge!findByCondition" method="post" target="self_bottom">
	  <table width="100%" border="0">
        <tr>
          <td width="11%"><div align="left"><span class="STYLE4">知识编号：</span></div></td>
          <td width="13%"><label>
            <input type="text" name="workliteknowledge.kl_id">
          </label></td>
          <td width="13%"><div align="left"><span class="STYLE4">所属系统：</span></div></td>
          <td width="15%"><label>
            <select name="workliteknowledge.kl_system">
            <option value="">请选择</option>
            <option value="法律系统">法律系统</option>
            <option value="纪检系统">纪检系统</option>
            <option value="安保系统">安保系统</option>
            <option value="村行核心系统">村行核心系统</option>
            <option value="村行前置系统">村行前置系统</option>
            <option value="村行同城系统">村行同城系统</option>
            <option value="村行柜面系统">村行柜面系统</option>
            <option value="村行报表系统">村行报表系统</option>
            <option value="村行信贷系统">村行信贷系统</option>
            <option value="网络学习系统">网络学习系统</option>
            <option value="邮件系统">邮件系统</option>
            <option value="移动OA系统">移动OA系统</option>
            <option value="IT管理平台系统">IT管理平台系统</option>
            <option value="项目管理系统">项目管理系统</option>
            <option value="OA系统">OA系统</option>
            </select>
          </label></td>
          <td width="9%" class="STYLE4">知识创建人：</td>
          <td width="12%"><label>
            <input type="text" name="workliteknowledge.kl_commit_person">
          </label></td>
          <td width="7%"><label>
            <input type="submit" name="Submit" value="开始查询">
			    <input type="hidden" name="pageNo" value="1" />
				<input type="hidden" name="pageSize" value="10" />
          </label></td>
          <td width="20%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
        <tr>
          <td><div align="left"><span class="STYLE4">知识创建起始日期：</span></div></td>
          <td><label>
            <input type="text" name="begin_date">
          </label></td>
          <td><div align="left"><span class="STYLE4">知识创建截止日期：</span></div></td>
          <td><label>
            <input type="text" name="end_date">
          </label></td>
          <td class="STYLE4">知识状态：</td>
          <td><label>
            <select name="workliteknowledge.kl_status">
              <option value="">请选择</option>
              <option value="编辑中">编辑中</option>
              <option value="审核中">审核中</option>
              <option value="已发布">已发布</option>
            </select>
          </label></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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
