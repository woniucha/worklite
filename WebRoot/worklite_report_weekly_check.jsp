<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function issueAction(){
document.report.action="report!issueReportWeekly";
document.report.submit();
}
function rollbackAction(){
document.report.action="report!rollbackReportWeekly";
document.report.submit();
}
</script>
<title>审核周报</title>
<style type="text/css">
<!--
.STYLE3 {font-family: "微软雅黑"; font-weight: bold; color: #666666; }
.STYLE4 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post" name="report">
  <p>&nbsp;</p>
  <table width="80%" border="0" align="center" cellspacing="0" bgcolor="#999999">
    <tr>
      <td width="12%" height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">周报标题：</span></div></td>
      <td bgcolor="#FFFFFF"><label>
        &nbsp;<s:property value="worklitereportweekly.rw_title"/></label></td>
      <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">周报状态：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportweekly.rw_status"/></td>
    </tr>
    <tr>
      <td height="31" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">周报周期：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportweekly.rw_cycle"/></td>
      <td width="8%" bgcolor="#FFFFFF"><div align="right" class="STYLE3">周报年份：</div></td>
      <td width="48%" bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportweekly.rw_year"/></td>
    </tr>
    <tr>
      <td height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE3">提交人员：</div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportweekly.rw_issue_person"/></td>
      <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">提交时间：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp; <s:property value="worklitereportweekly.rw_issue_date"/></td>
    </tr>
    <tr>
      <td height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">审核人员：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportweekly.rw_check_person"/></td>
      <td height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE3"><span class="STYLE4">所属系统：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;
          <s:property value="worklitereportweekly.rw_system"/></td>
    </tr>
    <tr>
      <td height="19" valign="top" bgcolor="#FFFFFF" class="STYLE3"><div align="right">周报附件：</div></td>
      <td colspan="3" valign="top" bgcolor="#FFFFFF">&nbsp;
      <a href="download!execute?filepath=<s:property value="worklitereportweekly.rw_file_path"/>&fileName=<s:property value="worklitereportweekly.rw_encloser"/>">
      <s:property value="worklitereportweekly.rw_encloser"/></a></td>
    </tr>
    <tr>
      <td height="91" valign="center" bgcolor="#FFFFFF" class="STYLE3"><div align="right">审核意见：</div></td>
      <td colspan="3" valign="center" bgcolor="#FFFFFF"><label>
        <textarea name="worklitereportweekly.rw_check_suggest" cols="100" rows="5"></textarea>
      </label></td>
    </tr>
    
    <tr>
      <td height="46" colspan="4" bgcolor="#FFFFFF">
        <div align="center">
          <input name="button" type="button"  onClick="issueAction()"  value="审核通过并发布">
          <input name="button2" type="button"  onClick="rollbackAction()"  value="审核不通过">
		   <input type="hidden" name="worklitereportweekly.rw_id" value="<s:property value="worklitereportweekly.rw_id"/>">
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
