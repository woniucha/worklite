<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>批量评价任务</title>
<style type="text/css">
<!--
.STYLE11 {font-family: "微软雅黑"; color: #333333; }
.STYLE12 {font-family: "微软雅黑"}
.STYLE13 {color: #333333}
.STYLE16 {color: #FFFFFF}
.STYLE17 {font-family: "微软雅黑"; font-weight: bold; }
-->
</style>

</head>

<body topmargin="0" leftmargin="0">
<form action="task!estimateTask" method="post" name="form1" id="form2">
  <table width="80%" border="0" align="center">

    <tr>
      <td>&nbsp;</td>
    </tr>
    
    <tr>
      <td height="27"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
      <tr>
      	<td>
      		<input type="hidden" name="worklitetask.task_id" value='<s:property value="worklitetask.task_id"/>'/>
    	</td>
    	<td>
      		<input type="hidden" name="estimate.user_id" value='<s:property value="worklitetaskhandler.task_handler"/>'/>
      	</td>
      </tr>
        <tr>
          <td width="5%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">选择</span></div></td>
          <td width="64%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价指标</span></div></td>
          <td width="14%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价分值</span></div></td>
          <td width="17%" bgcolor="#999999"><div align="center"></div></td>
        </tr>
        
        <tr>
        	<s:iterator value="rules_list" id="Rules" status="i">
        	<td bgcolor="#FFFFFF"><label>
            <div align="center">
              <input type="checkbox" name="rules.rule_id" value='<s:property value="#Rules.rule_id"/>'>
              </div>
             </label></td>
	        <td bgcolor="#FFFFFF">&nbsp;<s:property value="#Rules.rule_detail"/>
	        </td>
	        <td bgcolor="#FFFFFF"><div align="center"><s:property value="#Rules.remark1"/></div>
	        </td>
            <td bgcolor="#FFFFFF">
			<table width="200" border="1">
                   <tr>
				   	<s:iterator value="rules_list" id="Rules" status="i">
                    <td><input type="checkbox" name="rules.rule_id" value='<s:property value="#Handler.name"/>'></td>
                    <td>&nbsp;<s:property value="#Handler.name"/></td>
					</s:iterator>
                   </tr>
            </table>
			</td>
			<input type="hidden" value="rulesMatch" />
            <tr></tr>
	        </s:iterator>
        </tr>

      </table></td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
    </tr>
    
    
     <tr>
       <td class="STYLE12"><span class="STYLE13">【评价意见】</span></td>
    </tr>
    <tr>
    
   	  <td>
   	   <label>
        <textarea name="rules.remark2" cols="100"></textarea>
      </label>
      </td>
     <tr>
      <td height="46" colspan="6" bgcolor="#FFFFFF">
        <div align="center">
          
          <input type="submit" name="Submit" value="评价">
          <input type="button" value="返回" onClick="javascript:history.go(-1);">

          
      &nbsp;        </div></td>
    </tr>
  </table>
</form>
</body>
</html>
