<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import = "wtyw.worklite.beans.WorkliteTodoing" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>知识查询</title>
<script type="text/javascript" charset="UTF-8">
function redirect(a){
	var subStr = a.substring(0,1);
	if(subStr == "A")
	{
	   location.href="task!queryTaskDetail?task_id="+a;
	}
	if(subStr == "K")
	{
	   location.href="knowledge!queryKnowledgeDetail?kl_id="+a;
	}	
	if(subStr == "V")
	{
	   location.href="vacation!queryVacationDetail?vacation_id="+a;
	}
	if(subStr == "M")
	{
	   location.href="report!queryReportMonthDetail?rm_id="+a;
	}
	if(subStr == "W")
	{
	   location.href="report!queryReportWeeklyDetail?rw_id="+a;
	}
	
}
</script>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
.STYLE3 {font-family: "微软雅黑"}
.STYLE5 {font-family: "微软雅黑"; font-size: 18px; }
.STYLE6 {font-size: 14px}
-->
</style>
</head>

<body>
<p><br>
  <%
List<WorkliteTodoing> todoings = (List)request.getAttribute("worklitetodoings");
if (todoings.isEmpty()){
%>
</p>
<p><span class="STYLE5">&nbsp;&nbsp;&nbsp;<span class="STYLE6">恭喜，您现在可以去休息休息，暂无任务需要处理 !</span> </span>
  <%
}
else
{
%>
</p>
<table width="80%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">序号</div></td>
    <td width="14%" height="25" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">任务编号</div></td>
    <td width="42%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">任务标题</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">任务状态</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">发布日期</div></td>
    <td width="11%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">任务优先级</div></td>
    <td width="10%" bgcolor="#999999"><div align="center" class="STYLE3 STYLE2">动作</div></td>
  </tr>
     <% int i=1;%>
     <s:iterator value="worklitetodoings" id="worklitetodoing">
  <tr>
    <td bgcolor="#FFFFFF"><div align="center"><%=i%></div></td>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetodoing.wd_id"/></span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;<span class="STYLE1"><s:property value="#worklitetodoing.wd_title"/></span></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetodoing.wd_type"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetodoing.wd_date"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitetodoing.wd_priority"/></span></div></td>
    <td align="center" bgcolor="#FFFFFF">
        <input type="button" border="0"  value="GO ! 处理" onClick="redirect('<s:property value="#worklitetodoing.wd_id"/>')"></td>
    <% i++;%>
    </tr>
     </s:iterator>
</table>
<%
}
%>
<blockquote>&nbsp;</blockquote>
</body>
</html>
