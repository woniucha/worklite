<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>审核月报</title>
<script type="text/javascript">
function issueAction(){
document.report.action="report!issueReportMonth";
document.report.submit();
}
function rollbackAction(){
document.report.action="report!rollbackReportMonth";
document.report.submit();
}
</script>
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
      <td width="15%" height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">月报标题：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_title"/></td>
      <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE4">月报状态：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_status"/></td>
    </tr>
    <tr>
      <td height="31" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">月报期数：</span></div></td>
      <td width="28%" bgcolor="#FFFFFF"><label>
        &nbsp;<s:property value="worklitereportmonth.rm_issue"/>
      </label></td>
      <td width="11%" bgcolor="#FFFFFF"><div align="right" class="STYLE3">月报年份：</div></td>
      <td width="46%" bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_year"/></td>
    </tr>
    
    <tr>
      <td height="36" bgcolor="#FFFFFF"><div align="right" class="STYLE3">提交人：</div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_issue_person"/></td>
      <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">提交时间：</span></div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_issue_date"/></td>
    </tr>
    <tr>
      <td height="28" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">审核人：</span></div></td>
      <td bgcolor="#FFFFFF"><label>&nbsp;<s:property value="worklitereportmonth.rm_check_person"/>
        <span id="checkTask_desc"/>
      </label></td>
      <td bgcolor="#FFFFFF"><div align="right" class="STYLE4">月报编号：</div></td>
      <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitereportmonth.rm_id"/></td>
    </tr>
    <tr>
      <td height="28" valign="middle" bgcolor="#FFFFFF" class="STYLE3"><div align="right">附件：</div></td>
      <td colspan="3" valign="middle" bgcolor="#FFFFFF">&nbsp;
      <a href="download!execute?filepath=<s:property value="worklitereportmonth.rm_file_path"/>&fileName=<s:property value="worklitereportmonth.rm_remark3"/>">
      <s:property value="worklitereportmonth.rm_remark3"/></a></td>
    </tr>
    <tr>
      <td height="50" valign="middle" bgcolor="#FFFFFF" class="STYLE3"><div align="right">审核意见：</div></td>
      <td colspan="3" valign="middle" bgcolor="#FFFFFF"><textarea name="worklitereportmonth.rm_check_suggest" cols="80"></textarea></td>
    </tr>
    
    <tr>
      <td height="46" colspan="4" bgcolor="#FFFFFF"><div align="center">
        <input name="button" type="button"  onClick="issueAction()"  value="审核通过并发布">&nbsp;&nbsp;&nbsp;
          <input name="button2" type="button"  onClick="rollbackAction()"  value="审核不通过">
		   <input type="hidden" name="worklitereportmonth.rm_id" value="<s:property value="worklitereportmonth.rm_id"/>"></div></td>
    </tr>
  </table>
</form>
</body>
</html>
