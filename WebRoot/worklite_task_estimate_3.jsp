<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>评价任务</title>
<style type="text/css">
<!--
.STYLE11 {font-family: "微软雅黑"; color: #333333; }
.STYLE12 {font-family: "微软雅黑"}
.STYLE13 {color: #333333}
.STYLE16 {color: #FFFFFF}
.STYLE17 {font-family: "微软雅黑"; font-weight: bold; }
-->
</style>
<script type="text/javascript">	

	
</script>



</head>

<body topmargin="0" leftmargin="0">
<form action="task!estimateTask1" method="post">
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
          <td width="4%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">序号</span></div></td>
          <td width="30%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价指标</span></div></td>
          <td width="6%" bgcolor="#999999"><div align="center" class="STYLE17"><span class="STYLE16">评价分值</span></div></td>
          <td width="60%" bgcolor="#999999"><div align="center"><span class="STYLE16">处理人</span></div></td>
        </tr>
        
        <tr>
            <%int j=1; %>
        	<s:iterator value="rules_list" id="Rules" status="i">
        	<td bgcolor="#FFFFFF"><!--<label>
            <div align="center">
              <input type="checkbox" name="rules.rule_id" value='<s:property value="#Rules.rule_id"/>'>
              </div>
             </label>-->
             
             &nbsp;<s:property value="#Rules.rule_id"/>
             </td>
	        <td bgcolor="#FFFFFF">&nbsp;<s:property value="#Rules.rule_detail"/>
	        </td>
	        <td bgcolor="#FFFFFF"><div align="center"><s:property value="#Rules.remark1"/></div>
	        </td>
	        
	         <!-- 处理人循环列出 -->  
	        <td bgcolor="#FFFFFF">
			   <table width="100%" border="0">
	           <s:iterator value="handler_list" id="Handler">
		        <td><input type="checkbox" name="checkbox1" value='<s:property value="#Handler.task_handler"/><%=j%>'></td>
		        <td><s:property value="#Handler.task_handler"/></td>
	           </s:iterator>
	           </table> 
	        </td>
	        
            <tr></tr>
            <%j++;%>
	        </s:iterator>    	        
        </tr>
        
        
       

        
        
      </table></td>
    </tr>
    
    <tr>
      <td>&nbsp;</td>
    </tr>
    
    
    <!--
     <tr>
       <td class="STYLE12"><span class="STYLE13">【评价意见】</span></td>
    </tr>
    
    <tr>
   	  <td>
   	   <label>
        <textarea name="rules.remark2" cols="100"></textarea>
      </label>
      </td>
    </tr> 
     -->
     <tr>
      <td height="46" colspan="6" bgcolor="#FFFFFF">
        <div align="center">
          <label>
          <input type="submit" name="Submit" value="评价" />
          <input type="button" value="返回" onClick="javascript:history.go(-1);">
          </label>
      &nbsp;        </div></td>
    </tr>
  </table>
</form>
</body>
</html>
