<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>用户管理</title>
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
<p>&nbsp;</p>
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="12%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE5">领用时间</div></td>
    
    <td width="13%" bgcolor="#999999"><div align="center" class="STYLE6">领用人</div></td>
    
    <td width="16%" bgcolor="#999999"><div align="center" class="STYLE6">发放人</div></td>
    <td width="30%" bgcolor="#999999"><div align="center" class="STYLE6">归还时间</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6">归还人</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">入库人</div></td>
    
  </tr>

     <s:iterator value="pageModel.list" id="worklitetokenlend">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.use_time"/></span></div></td>
    
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.user_name"/></span></div></td>
    
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.ffang_name"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.back_time"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.backer_name"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetokenlend.rk_name"/></span></div></td>
    </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="10" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

	<s:url action="token!findByPage_tokenlend" var="Top">
    <s:param name="pageNo"><s:property value="pageModel.topPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{Top}">[首页]</s:a>

	<s:url action="token!findByPage_tokenlend" var="previous">
    <s:param name="pageNo"><s:property value="pageModel.previousPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{previous}">[前页]</s:a>

    <s:url action="token!findByPage_tokenlend" var="next">
    <s:param name="pageNo"><s:property value="pageModel.nextPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{next}">[后页]</s:a>
	
	<s:url action="token!findByPage_tokenlend" var="bottom">
    <s:param name="pageNo"><s:property value="pageModel.bottomPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{bottom}">[末页]</s:a>
	</div></td>
    </tr>
</table>

</body>
</html>
