<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/main.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<title>任务管理</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<table width="100%" border="0">
  <tr>
    <td height="29" valign="top">
	<!--nav-->
<div class="nav">
	<!--导航条-->
	<ul class="nav-main">
		<li><a href="worklite_incident_create.jsp" target="bottom">事件录入</a><span></span></li>
		<li>事件浏览<<span></span></li>
		
	</ul>
	<!--隐藏盒子-->
	<div id="box-1" class="hidden-box hidden-loc-us">
		<ul>
			<li><a href="worklite_task_create_task.jsp" target="bottom">新建工作任务</a></li>
			<li><a href="worklite_task_create_notice.jsp" target="bottom">新建一般通知</a></li>
			<li><a href="worklite_task_create_meeting.jsp" target="bottom">发起会议通知</a></li>
			<li><a href="worklite_task_create_safe.jsp" target="bottom">发起安全检查</a></li>
		</ul>
	</div>
	<div id="box-2" class="hidden-box hidden-loc-info">
		<ul>
			<li><a href="worklite_task_query_task.jsp" target="bottom">查询工作任务</a></li>
			<li>查询一般通知</li>
			<li><a href="worklite_meeting_query.jsp" target="bottom">查询会议通知</a></li>
			<li><a href="worklite_task_queryAll_safe.jsp" target="bottom">查询检查任务</a></li>
		</ul>
	</div>
</div>

<script type="text/javascript" src="js/main.js"></script>
	
	
	
	</td>
  </tr>
  <tr>
    <td height="400" valign="top"><iframe id="bottom" name="bottom" height="100%" width="100%" scrolling="auto" frameborder="0"></iframe></td>
  </tr>
</table>
</body>
</html>
