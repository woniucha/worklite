<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上传测试</title>
<script type="text/javascript">

function addMore(){ 
    var td = document.getElementById("td"); 
    var br =document.createElement("br");
    var input=document.createElement("input");
    var button=document.createElement("input"); 
    input.type="file";
    input.name="file"; 
    button.type="button";
    button.value="删除"; 
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
<body>
<s:form action="../upload!upload" enctype="multipart/form-data" theme="simple">
 <table align="center" width="50%" border="1">
  <tr>
   <td>上传文件</td>
   <td><s:textfield name="title" label="title" id="titleId"></s:textfield>
   </td>
  </tr>

  <tr>
   <td>上传</td>
   <td id="td"><s:file name="file" label="file"></s:file>&nbsp;&nbsp;<input type="button" value="添加文件" onClick="addMore()"></td>
  </tr>
  <tr>
   <td><s:submit value="提交"></s:submit></td>
   <td><s:reset value=" 重置"></s:reset></td>
  </tr>

 </table>
</s:form>
</body>
</html>
