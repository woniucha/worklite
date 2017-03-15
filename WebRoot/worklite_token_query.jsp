<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>令牌查询</title>
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
	  <form action="token!findByCondition" method="post" target="self_bottom">
	  <table width="100%" border="0">
        <tr>
          <td width="7%"><div align="left"><span class="STYLE4">令牌系统ID：</span></div></td>
          <td width="12%"><label>
            <input type="text" name="worklitetoken.token_id">
          </label></td>
          <td width="6%"><div align="left"><span class="STYLE4">令牌状态：</span></div></td>
          <td width="13%"><label>
            <select name="worklitetoken.token_status">
			  <option value="">请选择</option>
			  <option value="可领用">可领用</option>
			  <option value="已领用">已领用</option>
			  <option value="已注销">已注销</option>
            </select>
          </label></td>
          <td width="7%" class="STYLE4">令牌所有人：</td>
          <td width="14%"><label>
            <input type="text" name="worklitetoken.token_owner">
          </label></td>
          <td width="6%"><label><span class="STYLE4">令牌权限：</span></label></td>
          <td width="35%"><label>
          <select name="worklitetoken.token_root">
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
          <td><div align="left"><span class="STYLE4">UASS账户：</span></div></td>
          <td><label>
            <input type="text" name="worklitetoken.token_uass_name">
          </label></td>
          <td><div align="left"><span class="STYLE4">所属处室：</span></div></td>
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
          <td class="STYLE4">令牌所属地：</td>
          <td><label>
            <select name="worklitetoken.token_location">
              <option value="">请选择</option>
              <option value="北京数据中心">北京数据中心</option>
              <option value="武汉数据中心">武汉数据中心</option>
            </select>
          </label></td>
          <td width="6%"><input type="submit" name="Submit" value="开始查询">
            <input type="hidden" name="pageNo" value="1" />
            <input type="hidden" name="pageSize" value="10" /></td>
          <td width="35%"><label>
          <input type="reset" name="Submit2" value="重置">
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
