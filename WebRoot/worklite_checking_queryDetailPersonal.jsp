<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>查询考勤记录</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-family: "微软雅黑"}
.STYLE3 {color: #FFFFFF; font-family: "微软雅黑"; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="95%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="21%" bgcolor="#999999"><div align="center" class="STYLE1 STYLE2">项目组</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE3">姓名</div></td>
    <td width="20%" bgcolor="#999999"><div align="center" class="STYLE3">所属公司</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE3">考勤日期</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE3">签到类型</div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE3">签到时间</div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE3">签退时间</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE3">班次</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE3">人天数</div></td>
  </tr>
       <s:iterator value="pageModel.list" id="worklitecheckdetailpersonal">
  <tr>

    <td height="23" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_project"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_name"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_owner_institution"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_date"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_type"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_begin_time"/>
    </span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
      <s:property value="#worklitecheckdetailpersonal.check_end_time"/>
    </span></div></td>
	<td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
	  <s:property value="#worklitecheckdetailpersonal.check_classes"/>
	  </span></div></td>
	<td bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">
	  <s:property value="#worklitecheckdetailpersonal.check_personal_date"/>
	  </span></div></td>
  </tr>
     </s:iterator>
  <tr>
    <td colspan="9" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="check!findByCondition?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&checkdetailpersonal.check_name=<s:property value="pageModel.checkDetailPersonal.check_name"/>&checkdetailpersonal.check_owner_institution=<s:property value="pageModel.checkDetailPersonal.check_owner_institution"/>&checkdetailpersonal.check_project=<s:property value="pageModel.checkDetailPersonal.check_project"/>&checkdetailpersonal.check_begin_time=<s:property value="pageModel.checkDetailPersonal.check_begin_time"/>&checkdetailpersonal.check_end_time=<s:property value="pageModel.checkDetailPersonal.check_end_time"/>">[首页]</a>

    <a href="check!findByCondition?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&checkdetailpersonal.check_name=<s:property value="pageModel.checkDetailPersonal.check_name"/>&checkdetailpersonal.check_owner_institution=<s:property value="pageModel.checkDetailPersonal.check_owner_institution"/>&checkdetailpersonal.check_project=<s:property value="pageModel.checkDetailPersonal.check_project"/>&checkdetailpersonal.check_begin_time=<s:property value="pageModel.checkDetailPersonal.check_begin_time"/>&checkdetailpersonal.check_end_time=<s:property value="pageModel.checkDetailPersonal.check_end_time"/>">[前页]</a>
	
	<a href="check!findByCondition?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&checkdetailpersonal.check_name=<s:property value="pageModel.checkDetailPersonal.check_name"/>&checkdetailpersonal.check_owner_institution=<s:property value="pageModel.checkDetailPersonal.check_owner_institution"/>&checkdetailpersonal.check_project=<s:property value="pageModel.checkDetailPersonal.check_project"/>&checkdetailpersonal.check_begin_time=<s:property value="pageModel.checkDetailPersonal.check_begin_time"/>&checkdetailpersonal.check_end_time=<s:property value="pageModel.checkDetailPersonal.check_end_time"/>">[后页]</a>
	
<a href="check!findByCondition?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&checkdetailpersonal.check_name=<s:property value="pageModel.checkDetailPersonal.check_name"/>&checkdetailpersonal.check_owner_institution=<s:property value="pageModel.checkDetailPersonal.check_owner_institution"/>&checkdetailpersonal.check_project=<s:property value="pageModel.checkDetailPersonal.check_project"/>&checkdetailpersonal.check_begin_time=<s:property value="pageModel.checkDetailPersonal.check_begin_time"/>&checkdetailpersonal.check_end_time=<s:property value="pageModel.checkDetailPersonal.check_end_time"/>">[末页]</a>
	</div></td>
  </tr>
</table>
</body>
</html>
