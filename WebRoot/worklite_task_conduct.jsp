<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询详细检查任务</title>
<script type="text/javascript">

function addMore(){ 
    var td = document.getElementById("td"); 
    var br =document.createElement("br");
    var input=document.createElement("input");
    var button=document.createElement("input"); 
    input.type="file";
    input.name="file"; 
	input.size="50";
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

<style type="text/css">
<!--
.STYLE3 {font-family: "微软雅黑"; color: #FFFFFF; }
.STYLE11 {font-family: "微软雅黑"; color: #333333; }
.STYLE12 {font-family: "微软雅黑"}
.STYLE13 {color: #333333}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="task!handleTask" method="post" enctype="multipart/form-data" theme="simple">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td height="28" class="STYLE12"><span class="STYLE13">【任务编号】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_id"/>
          	<input name="worklitetask.task_id" type="hidden" value="<s:property value="taskDM.worklitetask.task_id"/>"/>
          </td>
          <td class="STYLE12"><span class="STYLE13">【任务状态】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_status"/></td>
          <td class="STYLE12">&nbsp;</td>
          <td class="STYLE12">&nbsp;</td>
          <td class="STYLE12">&nbsp;</td>
          <td class="STYLE12"><div align="right">
            <input type="button" value="返回前页" onClick="javascript:history.go(-1);">
          </div></td>
        </tr>
        <tr>
          <td height="28" class="STYLE12"><span class="STYLE13">【任务标题】</span></td>
          <td colspan="7" class="STYLE12"><s:property value="taskDM.worklitetask.task_title"/></td>
          </tr>
        <tr>
          <td width="9%" height="28" class="STYLE12"><span class="STYLE13">【任务类型】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_type"/></td>
          <td class="STYLE12"><span class="STYLE13">【急迫性】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_priority"/></td>
          <td width="9%" class="STYLE12"><span class="STYLE13">【创建人】</span></td>
          <td width="14%" class="STYLE12"><s:property value="taskDM.worklitetask.task_issue_person"/></td>
          <td width="9%" class="STYLE11">【创建日期】</td>
          <td width="19%" class="STYLE12"><s:property value="taskDM.worklitetask.task_issue_date"/></td>
        </tr>
        
        <tr>
          <td height="28" class="STYLE12"><span class="STYLE13">【开始日期】</span></td>
          <td width="16%" class="STYLE12"><s:property value="taskDM.worklitetask.task_begin_date"/></td>
          <td width="9%" class="STYLE12"><span class="STYLE13">【截止日期】</span></td>
          <td width="15%" class="STYLE12"><s:property value="taskDM.worklitetask.task_end_date"/></td>
          <td class="STYLE12"><span class="STYLE13">【完成日期】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_complete_date"/></td>
          <td class="STYLE12">&nbsp;</td>
          <td class="STYLE12">&nbsp;</td>
        </tr>
        <tr>
          <td height="39" class="STYLE12"><span class="STYLE13">【任务描述】</span></td>
          <td colspan="7" class="STYLE12">&nbsp;<s:property value="taskDM.worklitetask.task_desc"/></td>
          </tr>
        <tr>
          <td height="39" valign="top" class="STYLE12">【任务附件】</td>
          <td colspan="7" class="STYLE12">
		  <% int i=1;%>
		  <s:iterator value="taskDM.worklitetaskenclosures" id="taskenclosure">		  
		  <a href="download!execute?filepath=<s:property value="#taskenclosure.task_file_path"/>&fileName=<s:property value="#taskenclosure.task_file_name"/>">
		  <%=i%> . <s:property value="#taskenclosure.task_file_name"/></a>
		  </br>  
		  <% i++;%>
		  </s:iterator>		  </td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="9%" height="45" class="STYLE13"><span class="STYLE13">【处理意见】</span></td>
          <td width="91%"><label>
            <textarea name="worklitetaskhandler.task_handler_opinion" cols="100"></textarea>
          </label></td>
        </tr>
        <tr>
          <td class="STYLE13"><span class="STYLE13">【上传附件】</span></td>
          <td><table width="100%" border="0">
            <tr>
              <td width="49%" height="31" valign="top" id="td"><input name="file" type="file" size="50" label="file" /></td>
              <td width="51%" valign="top"><input type="button" value="添加更多附件" onClick="addMore()"></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td height="60"><label>
        <div align="center">
          <input type="submit" name="Submit" value="提交处理意见">
          <input type="button" value="返回" onClick="javascript:history.go(-1);">
        </div>
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
