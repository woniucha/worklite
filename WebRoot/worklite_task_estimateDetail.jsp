<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询评价详情</title>
<style type="text/css">
<!--
.STYLE12 {font-family: "微软雅黑"}
.STYLE13 {color: #333333}
.STYLE16 {color: #FFFFFF}
.STYLE17 {font-family: "微软雅黑"; font-weight: bold; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="task!estimateTask" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right">
        <input type="button" value="返回前页" onClick="javascript:history.go(-1);">
      </div></td>
    </tr>    
    <tr>
      <td height="27">
	  <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
      <tr>
      	<td>
      		<input type="hidden" name="worklitetask.task_id" value='<s:property value="worklitetask.task_id"/>'/>    	</td>
    	<td>
      		<input type="hidden" name="estimate.user_id" value='<s:property value="worklitetaskhandler.task_handler"/>'/>      	</td>
      </tr>
	  <span class="STYLE13 STYLE12">【任务缺陷】</span>
	  
        <tr>
          <td width="64%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价指标</span></div></td>
          <td width="14%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价分值</span></div></td>
        </tr>
        
        <tr>
        	<s:iterator value="estimate_list" id="estimate" status='i'>
        	  <td height="25" bgcolor="#FFFFFF" class="STYLE12">&nbsp;&nbsp;<s:property value="#estimate.estimate_detail"/></td>
	          <td bgcolor="#FFFFFF" class="STYLE12"><div align="center"><s:property value="#estimate.mark1"/></div></td>
	          <tr></tr>
	        </s:iterator>
        </tr>      
      </table>
	  </td>
    </tr>
    
     <tr>
       <td class="STYLE12">&nbsp;</td>
     </tr>
     <tr>
      <!-- 增加评价意见 -->
      	<td class="STYLE12"><span class="STYLE13">【评价意见】</span></td>
    </tr>
    
    
    <tr>
       <td class="STYLE12"> 
	   <br>
	   &nbsp;&nbsp;&nbsp;&nbsp;
	   <s:property value="taskDM.worklitetaskhandler.task_handle_estimate"/></td>
    </tr>
  </table>
</form>
</body>
</html>
