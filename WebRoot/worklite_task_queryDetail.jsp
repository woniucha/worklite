<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询详细检查任务</title>
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
<form action="" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td height="28" class="STYLE12"><span class="STYLE13">【任务编号】</span></td>
          <td class="STYLE12"><s:property value="taskDM.worklitetask.task_id"/></td>
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
		  <%=i%> . <a href="download!execute?filepath=<s:property value="#taskenclosure.task_file_path"/>&fileName=<s:property value="#taskenclosure.task_file_name"/>"><s:property value="#taskenclosure.task_file_name"/></a></br>  
		  <% i++;%>
		  </s:iterator>		  </td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    
    <tr>
      <td height="27"><table width="100%" border="0" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        <tr>
          <td width="8%" height="25" bgcolor="#999999"><div align="center" class="STYLE3">经办人</div></td>
          <td width="8%" bgcolor="#999999"><div align="center" class="STYLE3">状态</div></td>
          <td width="26%" bgcolor="#999999"><div align="center" class="STYLE3">处理结果</div></td>
          <td width="9%" bgcolor="#999999"><div align="center"><span class="STYLE3">处理日期</span></div></td>
          <td width="42%" bgcolor="#999999"><div align="center" class="STYLE3">附件</div></td>
          <td width="7%" bgcolor="#999999"><div align="center" class="STYLE3">评价得分</div></td>
          </tr>
	<s:iterator value="handlerDMs" id="handler">	
        <tr>
          <td height="25" bgcolor="#FFFFFF" class="STYLE12"><div align="center"><s:property value="#handler.worklitetaskhandler.task_handler"/></div></td>
          <td bgcolor="#FFFFFF" class="STYLE12"><div align="center"><s:property value="#handler.worklitetaskhandler.task_handle_status"/></div></td>
          <td bgcolor="#FFFFFF" class="STYLE12"><s:property value="#handler.worklitetaskhandler.task_handler_opinion"/></td>
          <td bgcolor="#FFFFFF" class="STYLE12"><div align="center"><s:property value="#handler.worklitetaskhandler.task_handle_date"/></div></td> 
		  <td bgcolor="#FFFFFF" class="STYLE12">

		  <% int j=1;%>
		  <s:iterator value="#handler.worklitetaskenclosures" id="handlerenclosure">		  
		  &nbsp; <%=j%> . <a href="download!execute?filepath=<s:property value="#handlerenclosure.task_file_path"/>&fileName=<s:property value="#handlerenclosure.task_file_name"/>"><s:property value="#handlerenclosure.task_file_name"/></a></br>  
		  <% j++;%>
		  </s:iterator>
		  </td>
          <td bgcolor="#FFFFFF" class="STYLE12"><div align="center"><a href="task!toEstimateDetail?worklitetask.task_id=<s:property value="taskDM.worklitetask.task_id"/>&worklitetaskhandler.task_handler=<s:property value="#handler.worklitetaskhandler.task_handler"/>"><s:property value="#handler.worklitetaskhandler.task_handle_estimate_score"/></a></div></td>
          </tr>
		  </s:iterator>	
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
