<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>月报查询</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-family: "微软雅黑"}
.STYLE3 {font-family: "微软雅黑"; color: #FFFFFF; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">

  <table width="90%" border="0" align="center">
    
    <tr>
      <td>
	  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="5%" height="25" bgcolor="#999999"><div align="center"><span class="STYLE3">年份</span></div></td>
    <td width="23%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">周报标题</div></td>
    <td width="23%" bgcolor="#999999"><div align="center"><span class="STYLE3">所属系统</span></div></td>
    <td width="15%" bgcolor="#999999"><div align="center"><span class="STYLE3">周期</span></div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">提交时间</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">提交人</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">审核人</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">状态</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">动作</div></td>
    </tr>

   <s:iterator value="pageModel.list" id="worklitereportweekly">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"> <s:property value="#worklitereportweekly.rw_year"/></div></td>
    <td bgcolor="#FFFFFF"><s:property value="#worklitereportweekly.rw_title"/>    </td>
    <td bgcolor="#FFFFFF"><div align="center"><s:property value="#worklitereportweekly.rw_system"/></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><s:property value="#worklitereportweekly.rw_cycle"/></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><s:property value="#worklitereportweekly.rw_issue_date"/></div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportweekly.rw_issue_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportweekly.rw_check_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportweekly.rw_status"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center"><a href="download!execute?filepath=<s:property value="#worklitereportweekly.rw_file_path"/>&fileName=<s:property value="#worklitereportweekly.rw_encloser"/>">下载</a></div></td>
    </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="9" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="report!findByConditionForWeekly?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&worklitereportweekly.rw_year=<s:property value="pageModel.worklitereportweekly.rw_year"/>&worklitereportweekly.rw_system=<s:property value="
	pageModel.worklitereportweekly.rw_system"/>&worklitereportweekly.rw_issue_person=<s:property value="
	pageModel.worklitereportweekly.rw_issue_person"/>&weekly_begin_date=<s:property value="
	weekly_begin_date"/>&weekly_end_date=<s:property value="
	weekly_end_date"/>">[首页]</a>

    <a href="report!findByConditionForWeekly?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&worklitereportweekly.rw_year=<s:property value="pageModel.worklitereportweekly.rw_year"/>&worklitereportweekly.rw_system=<s:property value="
	pageModel.worklitereportweekly.rw_system"/>&worklitereportweekly.rw_issue_person=<s:property value="
	pageModel.worklitereportweekly.rw_issue_person"/>&weekly_begin_date=<s:property value="
	weekly_begin_date"/>&weekly_end_date=<s:property value="
	weekly_end_date"/>">[前页]</a>
	
	<a href="report!findByConditionForWeekly?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&worklitereportweekly.rw_year=<s:property value="pageModel.worklitereportweekly.rw_year"/>&worklitereportweekly.rw_system=<s:property value="
	pageModel.worklitereportweekly.rw_system"/>&worklitereportweekly.rw_issue_person=<s:property value="
	pageModel.worklitereportweekly.rw_issue_person"/>&weekly_begin_date=<s:property value="
	weekly_begin_date"/>&weekly_end_date=<s:property value="
	weekly_end_date"/>">[后页]</a>
	
<a href="report!findByConditionForWeekly?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&worklitereportweekly.rw_year=<s:property value="pageModel.worklitereportweekly.rw_year"/>&worklitereportweekly.rw_system=<s:property value="
	pageModel.worklitereportweekly.rw_system"/>&worklitereportweekly.rw_issue_person=<s:property value="
	pageModel.worklitereportweekly.rw_issue_person"/>&weekly_begin_date=<s:property value="
	weekly_begin_date"/>&weekly_end_date=<s:property value="
	weekly_end_date"/>">[末页]</a>
	</div></td>
    </tr>
</table>	  </td>
    </tr>
  </table>

</body>
</html>
