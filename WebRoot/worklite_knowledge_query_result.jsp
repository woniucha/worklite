<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>知识查询</title>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
.STYLE3 {font-family: "微软雅黑"}
.STYLE4 {color: #FFFFFF; font-family: "微软雅黑"; }
-->
</style>
</head>

<body>
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="11%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE3">知识编号</div></td>
    <td width="27%" bgcolor="#999999"><div align="center" class="STYLE4">标题</div></td>
    <td width="16%" bgcolor="#999999"><div align="center" class="STYLE4">所属系统 </div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE4">提交时间</div></td>
    <td width="11%" bgcolor="#999999"><div align="center" class="STYLE4">提交人</div></td>
    <td width="10%" bgcolor="#999999"><div align="center" class="STYLE4">状态</div></td>
    <td width="11%" bgcolor="#999999"><div align="center" class="STYLE4">动作</div></td>
  </tr>

     <s:iterator value="pageModel.list" id="workliteknowledge">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
	<s:url action="knowledge!queryKnowledgeDetail" var="querybyid">
    <s:param name="kl_id"><s:property value="#workliteknowledge.kl_id"/></s:param>
    </s:url>
    <s:a href="%{querybyid}">
	<s:property value="#workliteknowledge.kl_id"/></s:a></span></div></td>
    <td bgcolor="#FFFFFF"><span class="STYLE1"><s:property value="#workliteknowledge.kl_title"/></span></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteknowledge.kl_system"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteknowledge.kl_commit_time"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteknowledge.kl_commit_person"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteknowledge.kl_status"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center">
	<s:url action="knowledge!queryKnowledgeDetail" var="querybyid">
    <s:param name="kl_id"><s:property value="#workliteknowledge.kl_id"/></s:param>
    </s:url>
    <s:a href="%{querybyid}">
	查询</s:a></div></td>
  </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="7" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="knowledge!findByCondition?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&workliteknowledge.kl_id=<s:property value="pageModel.workliteknowledge.kl_id"/>&workliteknowledge.kl_status=<s:property value="
	pageModel.workliteknowledge.kl_status"/>&workliteknowledge.kl_commit_person=<s:property value="
	pageModel.workliteknowledge.kl_commit_person"/>&workliteknowledge.kl_system=<s:property value="
	pageModel.workliteknowledge.kl_system"/>&begin_date=<s:property value="
	begin_date"/>&end_date=<s:property value="
	end_date"/>">[首页]</a>

    <a href="knowledge!findByCondition?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&workliteknowledge.kl_id=<s:property value="pageModel.workliteknowledge.kl_id"/>&workliteknowledge.kl_status=<s:property value="
	pageModel.workliteknowledge.kl_status"/>&workliteknowledge.kl_commit_person=<s:property value="
	pageModel.workliteknowledge.kl_commit_person"/>&workliteknowledge.kl_system=<s:property value="
	pageModel.workliteknowledge.kl_system"/>&begin_date=<s:property value="
	begin_date"/>&end_date=<s:property value="
	end_date"/>">[前页]</a>
	
	<a href="knowledge!findByCondition?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&workliteknowledge.kl_id=<s:property value="pageModel.workliteknowledge.kl_id"/>&workliteknowledge.kl_status=<s:property value="pageModel.workliteknowledge.kl_status"/>&workliteknowledge.kl_commit_person=<s:property value="pageModel.workliteknowledge.kl_commit_person"/>&workliteknowledge.kl_system=<s:property value="pageModel.workliteknowledge.kl_system"/>&begin_date=<s:property value="begin_date"/>&end_date=<s:property value="end_date"/>">[后页]</a>
	
<a href="knowledge!findByCondition?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&workliteknowledge.kl_id=<s:property value="pageModel.workliteknowledge.kl_id"/>&workliteknowledge.kl_status=<s:property value="
	pageModel.workliteknowledge.kl_status"/>&workliteknowledge.kl_commit_person=<s:property value="
	pageModel.workliteknowledge.kl_commit_person"/>&workliteknowledge.kl_system=<s:property value="
	pageModel.workliteknowledge.kl_system"/>&begin_date=<s:property value="
	begin_date"/>&end_date=<s:property value="
	end_date"/>">[末页]</a>
</div></td>
    </tr>
</table>

</body>
</html>
