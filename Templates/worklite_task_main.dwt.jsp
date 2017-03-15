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
		<li id="li-1">创建任务<span></span></li>
		<li>查询任务<span></span></li>
	</ul>
	<!--隐藏盒子-->
	<div id="box-1" class="hidden-box hidden-loc-us">
		<ul>
			<li><a href="worklite_task_create_task.jsp" target="bottom">新建任务</a></li>
			<li><a href="worklite_task_create_notice.jsp" target="bottom">新建通知</a></li>
			<li><a href="worklite_task_create_meeting.jsp" target="bottom">发起会议</a></li>
		</ul>
	</div>
	<div id="box-2" class="hidden-box hidden-loc-index">
		<ul>
			<li>加入联盟步骤</li>
			<li>申请要求</li>
		</ul>
	</div>
	<div id="box-3" class="hidden-box hidden-loc-info">
		<ul>
			<li>消费者服务</li>
			<li>产品信息</li>
			<li>关于我们</li>
			<li>商家信息</li>
			<li>加入我们</li>
            <li>关于我们</li>
			<li>产品信息</li>
		</ul>
	</div>
    <div id="box-4" class="hidden-box hidden-loc-info box04">
		<ul>
			<li>服务理念</li>
			<li>服务产品</li>
			<li>周边有机网络</li>
			<li>商铺汇总</li>
			<li>有机百科</li>
            <li>保障与维权</li>
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
