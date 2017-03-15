<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function addAction(){
if(document.form1.rm_title.value ==""){
alert("请填写月报标题");
document.form1.rm_title.focus();
return(false);
}

var filter=/^.{0,50}$/;
if(!filter.test(document.form1.rm_title.value)){
alert("月报标题不能超过50个字");
document.form1.rm_title.focus();
document.form1.rm_title.select();
return(false);
}

if(document.form1.rm_issue.value ==""){
alert("请填写月报期数");
document.form1.rm_issue.focus();
return(false);
}

if(document.form1.rm_year.value ==""){
alert("请选择月报年份");
document.form1.rm_year.focus();
return(false);
}

if(document.form1.rm_check_person.value ==""){
alert("请选择审核人");
document.form1.rm_check_person.focus();
return(false);
}

if(document.form1.file.value ==""){
alert("请上传文件");
document.form1.file.focus();
return(false);
}

document.form1.action="report!addReportMonth";
document.form1.submit();
}
</script>
<title>上传月报</title>
<style type="text/css">
<!--
.STYLE3 {font-family: "微软雅黑"; font-weight: bold; color: #666666; }
.STYLE4 {font-family: "微软雅黑"}
-->
</style>
</head>
	
<body topmargin="0" leftmargin="0">
<form name="form1" action="report!addReportMonth" method="post" enctype="multipart/form-data" theme="simple">
  <p>&nbsp;</p>
  <table width="80%" border="0" align="center" cellspacing="0" bgcolor="#999999">
    <tr>
      <td width="15%" height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">月报标题：</span></div></td>
      <td colspan="3" bgcolor="#FFFFFF"><input name="worklitereportmonth.rm_title" id="rm_title" type="text" size="100" ></td>
    </tr>
     <tr>
      <td width="15%" height="15" bgcolor="#FFFFFF"></td>
      <td colspan="3" bgcolor="#FFFFFF">例如：2016年4月委托研发类系统运维月报</td>
    </tr>
    <tr>
      <td height="31" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">月报期数：</span></div></td>
      <td width="32%" bgcolor="#FFFFFF"><label><input name="worklitereportmonth.rm_issue" id="rm_issue" type="text" size="50">
      </label></td>
      <td width="12%" bgcolor="#FFFFFF"><div align="right" class="STYLE3">月报年份：</div></td>
      <td width="41%" bgcolor="#FFFFFF"><select name="worklitereportmonth.rm_year" id="rm_year">
              <option value="">请选择</option>
              <option value="2015">2015</option>
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
      </select></td>
    </tr>    
    <tr>
      <td width="15%" height="15" bgcolor="#FFFFFF"></td>
      <td colspan="3" bgcolor="#FFFFFF">例如：总第十二期</td>
    </tr>
    <tr>
      <td height="36" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">审核人：</span></div></td>
      <td colspan="3" bgcolor="#FFFFFF"><label><select name="worklitereportmonth.rm_check_person" id="rm_check_person">
            <option value="">请选择</option>
            <option value="陈祝军">陈祝军</option>
            <option value="王翀">王翀</option>
      </label></td>
    </tr>
    <tr>
      <td height="50" valign="top" bgcolor="#FFFFFF" class="STYLE3"><div align="right">上传附件：</div></td>
      <td colspan="3" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0">
        <tr>
          <td width="49%" height="31" valign="top" id="td"><input name="file" type="file" size="50" label="file" /></td>
          <td width="51%" valign="top"></td>
        </tr>
        
      </table></td>
    </tr>
    
    <tr>
      <td height="46" colspan="4" bgcolor="#FFFFFF">
        <div align="center">
          <input type="button" name="Submit" value="提交" onClick="addAction()"></div></td>
    </tr>
  </table>
</form>
</body>
</html>
