<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset==UTF-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>图书管理</title>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
.STYLE5 {font-family: "微软雅黑"}
.STYLE6 {color: #FFFFFF; font-family: "微软雅黑"; }
-->
</style>
</head>

<body>
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="12%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE5">令牌序列号</div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE6">UASS账户</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE6">所有人</div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE6">所属处室</div></td>
    <td width="15%" bgcolor="#999999"><div align="center" class="STYLE6">权限</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">状态</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
  </tr>
  <s:iterator value="pageModelByIndication.list" id="worklitetoken">
    <tr>
      <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_id"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_uass_name"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_owner"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_office"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_root"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
        <s:property value="#worklitetoken.token_status"/>
      </span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="token!queryTokenDetail?worklitetoken.token_id=<s:property value="#worklitetoken.token_id"/>">详情</a></span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="updatetoken!updateTokenDetail?worklitetoken.token_id=<s:property value="#worklitetoken.token_id"/>">维护</a></span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="token!useQuery?worklitetoken.token_id=<s:property value="#worklitetoken.token_id"/>">领用</a></span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="token!backQuery?worklitetoken.token_id=<s:property value="#worklitetoken.token_id"/>">归还</a></span></div></td>
      <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="token!annulToken?worklitetoken.token_id=<s:property value="#worklitetoken.token_id"/>">注销</a></span></div></td>
    </tr>
  </s:iterator>
  <tr>
    <td height="25" colspan="11" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModelByIndication.pageNo"/>页/共<s:property value="pageModelByIndication.totalPages"/>页 <s:property value="pageModelByIndication.totalRecords"/>条记录

    <a href="token!findByCondition?pageNo=<s:property value="pageModelByIndication.topPageNo"/>&pageSize=10&worklitetoken.token_id=<s:property value="pageModelByIndication.worklitetoken.token_id"/>&worklitetoken.token_uass_name=<s:property value="
	pageModelByIndication.worklitetoken.token_uass_name"/>&worklitetoken.token_status=<s:property value="
	pageModelByIndication.worklitetoken.token_status"/>&worklitetoken.token_location=<s:property value="
	pageModelByIndication.worklitetoken.token_location"/>&worklitetoken.token_office=<s:property value="
	pageModelByIndication.worklitetoken.token_office"/>&worklitetoken.token_root=<s:property value="
	pageModelByIndication.worklitetoken.token_root"/>&worklitetoken.token_owner=<s:property value="
	pageModelByIndication.worklitetoken.token_owner"/>">[首页]</a>

    <a href="token!findByCondition?pageNo=<s:property value="pageModelByIndication.previousPageNo"/>&pageSize=10&worklitetoken.token_id=<s:property value="pageModelByIndication.worklitetoken.token_id"/>&worklitetoken.token_uass_name=<s:property value="
	pageModelByIndication.worklitetoken.token_uass_name"/>&worklitetoken.token_status=<s:property value="
	pageModelByIndication.worklitetoken.token_status"/>&worklitetoken.token_location=<s:property value="
	pageModelByIndication.worklitetoken.token_location"/>&worklitetoken.token_office=<s:property value="
	pageModelByIndication.worklitetoken.token_office"/>&worklitetoken.token_root=<s:property value="
	pageModelByIndication.worklitetoken.token_root"/>&worklitetoken.token_owner=<s:property value="
	pageModelByIndication.worklitetoken.token_owner"/>">[前页]</a>
	
	<a href="token!findByCondition?pageNo=<s:property value="pageModelByIndication.nextPageNo"/>&pageSize=10&worklitetoken.token_status=<s:property value="
	pageModelByIndication.worklitetoken.token_status"/>&worklitetoken.token_uass_name=<s:property value="
	pageModelByIndication.worklitetoken.token_uass_name"/>&worklitetoken.token_id=<s:property value="
	pageModelByIndication.worklitetoken.token_id"/>&worklitetoken.token_location=<s:property value="
	pageModelByIndication.worklitetoken.token_location"/>&worklitetoken.token_office=<s:property value="
	pageModelByIndication.worklitetoken.token_office"/>&worklitetoken.token_root=<s:property value="
	pageModelByIndication.worklitetoken.token_root"/>&worklitetoken.token_owner=<s:property value="
	pageModelByIndication.worklitetoken.token_owner"/>">[后页]</a>
	
<a href="token!findByCondition?pageNo=<s:property value="pageModelByIndication.bottomPageNo"/>&pageSize=10&worklitetoken.token_id=<s:property value="pageModelByIndication.worklitetoken.token_id"/>&worklitetoken.token_uass_name=<s:property value="
	pageModelByIndication.worklitetoken.token_uass_name"/>&worklitetoken.token_status=<s:property value="
	pageModelByIndication.worklitetoken.token_status"/>&worklitetoken.token_location=<s:property value="
	pageModelByIndication.worklitetoken.token_location"/>&worklitetoken.token_office=<s:property value="
	pageModelByIndication.worklitetoken.token_office"/>&worklitetoken.token_root=<s:property value="
	pageModelByIndication.worklitetoken.token_root"/>&worklitetoken.token_owner=<s:property value="
	pageModelByIndication.worklitetoken.token_owner"/>">[末页]</a>
	</div>	</td>
  </tr>
</table>
</body>
</html>
