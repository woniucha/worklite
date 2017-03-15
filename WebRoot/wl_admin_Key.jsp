<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>令牌管理</title>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
-->
</style>
</head>

<body>
<p><a href="wl_add_Key.jsp">增加令牌</a></p>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td height="25" bgcolor="#3399CC"><div align="center" class="STYLE2">令牌序列号</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">UASS账户</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">所有人</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">所属处室</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">状态</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">动作</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">动作</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">动作</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">动作</div></td>
    <td bgcolor="#3399CC"><div align="center" class="STYLE2">动作</div></td>
  </tr>

     <s:iterator value="pageModel.list" id="worklitetoken">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetoken.token_id"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetoken.token_uass_name"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetoken.token_owner"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetoken.token_office"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetoken.token_status"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">查询</span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">修改</span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">领用</span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">归还</span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">注销</span></div></td>
  </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="10" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

	<s:url action="token!findByPage" var="Top">
    <s:param name="pageNo"><s:property value="pageModel.topPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{Top}">[首页]</s:a>

	<s:url action="token!findByPage" var="previous">
    <s:param name="pageNo"><s:property value="pageModel.previousPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{previous}">[前页]</s:a>

    <s:url action="token!findByPage" var="next">
    <s:param name="pageNo"><s:property value="pageModel.nextPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{next}">[后页]</s:a>
	
	<s:url action="token!findByPage" var="bottom">
    <s:param name="pageNo"><s:property value="pageModel.bottomPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{bottom}">[末页]</s:a>
	</div></td>
    </tr>
</table>

</body>
</html>
