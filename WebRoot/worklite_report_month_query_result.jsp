<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建会议通知</title>
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
    <td width="6%" height="25" bgcolor="#999999"><div align="center"><span class="STYLE3">年份</span></div></td>
    <td width="13%" bgcolor="#999999"><div align="center"><span class="STYLE3">期数</span></div></td>
    <td width="41%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">月报标题</div></td>
    <td width="10%" bgcolor="#999999"><div align="center"><span class="STYLE3">提交时间</span></div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">提交人</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">审核人</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">状态</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">动作</div></td>
    </tr>

   <s:iterator value="pageModel.list" id="worklitereportmonth">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_year"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_issue"/>
    </div></td>
    <td bgcolor="#FFFFFF">&nbsp;
      <s:property value="#worklitereportmonth.rm_title"/>    </td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_issue_date"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_issue_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_check_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitereportmonth.rm_status"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center"><a href="download!execute?filepath=<s:property value="#worklitereportmonth.rm_file_path"/>&fileName=<s:property value="#worklitereportmonth.rm_remark3"/>">查看</a></div></td>
    </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="8" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="report!findByConditionForMonth?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&worklitereportmonth.rm_year=<s:property value="pageModel.worklitereportmonth.rm_year"/>&worklitereportmonth.rm_issue_person=<s:property value="
	pageModel.worklitereportmonth.rm_issue_person"/>&month_begin_date=<s:property value="
	month_begin_date"/>&month_end_date=<s:property value="
	month_end_date"/>">[首页]</a>

    <a href="report!findByConditionForMonth?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&worklitereportmonth.rm_year=<s:property value="pageModel.worklitereportmonth.rm_year"/>&worklitereportmonth.rm_issue_person=<s:property value="
	pageModel.worklitereportmonth.rm_issue_person"/>&month_begin_date=<s:property value="
	month_begin_date"/>&month_end_date=<s:property value="
	month_end_date"/>">[前页]</a>
	
	<a href="report!findByConditionForMonth?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&worklitereportmonth.rm_year=<s:property value="pageModel.worklitereportmonth.rm_year"/>&worklitereportmonth.rm_issue_person=<s:property value="
	pageModel.worklitereportmonth.rm_issue_person"/>&month_begin_date=<s:property value="
	month_begin_date"/>&month_end_date=<s:property value="
	month_end_date"/>">[后页]</a>
	
<a href="report!findByConditionForMonth?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&worklitereportmonth.rm_year=<s:property value="pageModel.worklitereportmonth.rm_year"/>&worklitereportmonth.rm_issue_person=<s:property value="
	pageModel.worklitereportmonth.rm_issue_person"/>&month_begin_date=<s:property value="
	month_begin_date"/>&month_end_date=<s:property value="
	month_end_date"/>">[末页]</a>
	</div></td>
    </tr>
</table>	  </td>
    </tr>
  </table>

</body>
</html>
