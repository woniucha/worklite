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
.STYLE4 {font-family: "微软雅黑"; color: #333333; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">

  <table width="90%" border="0" align="center">
    
    <tr>
      <td>
	  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="12%" height="25" bgcolor="#999999"><div align="center" class="STYLE1 STYLE2">任务编号</div></td>
    <td width="36%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">任务标题</div></td>
    <td width="10%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">发布时间</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">发布人</div></td>
    <td width="10%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">开始时间</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">结束时间</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">状态</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6 STYLE1 STYLE2">动作</div></td>
    </tr>

   <s:iterator value="pageModel.list" id="worklitetask">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_id"/>
    </div></td>
    <td bgcolor="#FFFFFF">&nbsp;
      <s:property value="#worklitetask.task_title"/>    </td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_issue_date"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_issue_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_begin_date"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_end_date"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <s:property value="#worklitetask.task_status"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center"><a href="task!queryTaskDetail?task_id=<s:property value="#worklitetask.task_id"/>" target="right">详细</a></div></td>
    </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="8" bgcolor="#FFFFFF"><div align="right">第<s:property value="pageModel.pageNo"/>页/共<s:property value="pageModel.totalPages"/>页 <s:property value="pageModel.totalRecords"/>条记录

    <a href="task!findByCondition?pageNo=<s:property value="pageModel.topPageNo"/>&pageSize=10&worklitetask.task_id=<s:property value="pageModel.worklitetask.task_id"/>&worklitetask.task_status=<s:property value="
	pageModel.worklitetask.task_status"/>&worklitetask.task_title=<s:property value="
	pageModel.worklitetask.task_title"/>&worklitetask.task_issue_person=<s:property value="
	pageModel.worklitetask.task_issue_person"/>&issue_begin_date=<s:property value="
	issue_begin_date"/>&issue_end_date=<s:property value="
	issue_end_date"/>">[首页]</a>

    <a href="task!findByCondition?pageNo=<s:property value="pageModel.previousPageNo"/>&pageSize=10&worklitetask.task_id=<s:property value="pageModel.worklitetask.task_id"/>&worklitetask.task_status=<s:property value="
	pageModel.worklitetask.task_status"/>&worklitetask.task_title=<s:property value="
	pageModel.worklitetask.task_title"/>&worklitetask.task_issue_person=<s:property value="
	pageModel.worklitetask.task_issue_person"/>&issue_begin_date=<s:property value="
	issue_begin_date"/>&issue_end_date=<s:property value="
	issue_end_date"/>">[前页]</a>
	
	<a href="task!findByCondition?pageNo=<s:property value="pageModel.nextPageNo"/>&pageSize=10&worklitetask.task_id=<s:property value="pageModel.worklitetask.task_id"/>&worklitetask.task_status=<s:property value="
	pageModel.worklitetask.task_status"/>&worklitetask.task_title=<s:property value="
	pageModel.worklitetask.task_title"/>&worklitetask.task_issue_person=<s:property value="
	pageModel.worklitetask.task_issue_person"/>&issue_begin_date=<s:property value="
	issue_begin_date"/>&issue_end_date=<s:property value="
	issue_end_date"/>">[后页]</a>
	
<a href="task!findByCondition?pageNo=<s:property value="pageModel.bottomPageNo"/>&pageSize=10&worklitetask.task_id=<s:property value="pageModel.worklitetask.task_id"/>&worklitetask.task_status=<s:property value="
pageModel.worklitetask.task_status"/>&worklitetask.task_title=<s:property value="
pageModel.worklitetask.task_title"/>&worklitetask.task_issue_person=<s:property value="
pageModel.worklitetask.task_issue_person"/>&issue_begin_date=<s:property value="
issue_begin_date"/>&issue_end_date=<s:property value="
issue_end_date"/>">[末页]</a>
	</div></td>
    </tr>
</table>	  </td>
    </tr>
  </table>

</body>
</html>
