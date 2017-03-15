<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>用户查询</title>
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
    <td width="8%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE5">员工编号</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6">员工姓名</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE6">UASS账户</div></td>
    <td width="23%" bgcolor="#999999"><div align="center" class="STYLE6">所属公司</div></td>
    <td width="13%" bgcolor="#999999"><div align="center" class="STYLE6">邮箱</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE6">手机</div></td>
    <td width="10%" bgcolor="#999999"><div align="center" class="STYLE6">工位电话</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">状态</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">动作</div></td>
  </tr>

     <s:iterator value="pageModel.list" id="workliteuserinfo">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteuserinfo.user_id"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteuserinfo.user_name"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteuserinfo.user_account"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#workliteuserinfo.user_corporation"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
      <s:property value="#workliteuserinfo.user_mail"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
      <s:property value="#workliteuserinfo.user_phone"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
      <s:property value="#workliteuserinfo.user_telephone"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
    <s:if test="#workliteuserinfo.user_status ==1">正常</s:if>
    <s:else>注销</s:else></span></div></td>
    
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="user!queryUserInfoDetail?workliteuserinfo.user_id=<s:property value="#workliteuserinfo.user_id"/>">详情</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="user!updatequeryUserInfoDetail?workliteuserinfo.user_id=<s:property value="#workliteuserinfo.user_id"/>">维护</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="user!annulUser?workliteuserinfo.user_id=<s:property value="#workliteuserinfo.user_id"/>">注销</a></span></div></td>
  </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="11" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="user!findByCondition?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&workliteuserinfo.user_name=<s:property value="pageModel.workliteuserinfo.user_name"/>&workliteuserinfo.user_status=<s:property value="
	pageModel.workliteuserinfo.user_status"/>&workliteuserinfo.user_education=<s:property value="
	pageModel.workliteuserinfo.user_education"/>&workliteuserinfo.user_corporation=<s:property value="
	pageModel.workliteuserinfo.user_corporation"/>&workliteuserinfo.user_specialty=<s:property value="
    pageModel.workliteuserinfo.user_specialty"/>&workliteuserinfo.user_project=<s:property value="
	pageModel.workliteuserinfo.user_project"/>">[首页]</a>

    <a href="user!findByCondition?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&workliteuserinfo.user_name=<s:property value="pageModel.workliteuserinfo.user_name"/>&workliteuserinfo.user_status=<s:property value="
	pageModel.workliteuserinfo.user_status"/>&workliteuserinfo.user_education=<s:property value="
	pageModel.workliteuserinfo.user_education"/>&workliteuserinfo.user_corporation=<s:property value="
	pageModel.workliteuserinfo.user_corporation"/>&workliteuserinfo.user_specialty=<s:property value="
    pageModel.workliteuserinfo.user_specialty"/>&workliteuserinfo.user_project=<s:property value="
	pageModel.workliteuserinfo.user_project"/>">[前页]</a>
	
	<a href="user!findByCondition?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&workliteuserinfo.user_name=<s:property value="pageModel.workliteuserinfo.user_name"/>&workliteuserinfo.user_status=<s:property value="
	pageModel.workliteuserinfo.user_status"/>&workliteuserinfo.user_education=<s:property value="
	pageModel.workliteuserinfo.user_education"/>&workliteuserinfo.user_corporation=<s:property value="
	pageModel.workliteuserinfo.user_corporation"/>&workliteuserinfo.user_specialty=<s:property value="
    pageModel.workliteuserinfo.user_specialty"/>&workliteuserinfo.user_project=<s:property value="
	pageModel.workliteuserinfo.user_project"/>">[后页]</a>
	
<a href="user!findByCondition?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&workliteuserinfo.user_name=<s:property value="pageModel.workliteuserinfo.user_name"/>&workliteuserinfo.user_status=<s:property value="
	pageModel.workliteuserinfo.user_status"/>&workliteuserinfo.user_education=<s:property value="
	pageModel.workliteuserinfo.user_education"/>&workliteuserinfo.user_corporation=<s:property value="
	pageModel.workliteuserinfo.user_corporation"/>&workliteuserinfo.user_specialty=<s:property value="
    pageModel.workliteuserinfo.user_specialty"/>&workliteuserinfo.user_project=<s:property value="
	pageModel.workliteuserinfo.user_project"/>">[末页]</a>
	</div></td>
    </tr>
</table>

<a href="file:///D|/workspace/worklite/WebRoot/worklite_token_add.jsp">worklite_token_add</a></body>
</html>
