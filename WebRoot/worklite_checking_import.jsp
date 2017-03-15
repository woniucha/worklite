<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>考勤记录导入</title>
<script type="text/javascript">
function addMore(){
 var td = document.getElementById("td");
 
 var br =document.createElement("br");
 var input=document.createElement("input");
 var button=document.createElement("input");
 
 input.type="file";
 input.name="file";
 
 button.type="button";
 button.value="ReMove";
 
 button.onclick = function(){
 td.removeChild(br);
 td.removeChild(input);
 td.removeChild(button);
 }
 
 td.appendChild(br);
 td.appendChild(input);
 td.appendChild(button);
}
</script>


</head>

<body topmargin="0" leftmargin="0">
<form name="form1" method="post" action="check!addCheckDetailPersonal" enctype="multipart/form-data" theme="simple">
<table width="50%" border="0" align="center">  
  <tr>
    <td width="15%" height="50">文件路径：</td>
    <td width="85%"><input type="file" name="file" /></td>
  </tr>
  <tr>
    <td colspan="2">
      <div align="center">
  <input name="submit" type="submit" value="提交">
  <input name="reset" type="reset" value="重置">
        </div>
    </td>
  </tr>
</table>
</form>    
</body>
</html>
