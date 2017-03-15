<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String name = request.getParameter("name");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">

		<title>welcome</title>

	</head>

	<body>
		集合遍历
		<br />
		<c:forEach items="${workliteusers}" var="workliteuser">
			<c:out value="${workliteuser.user_name}"></c:out>
			<c:out value="${workliteuser.user_id}"></c:out>
			<br />
		</c:forEach>
		<!--
                   	<c:if test="${b.bbaby ==0}">
                		<c:out value=""></c:out>
                	</c:if>
                	<c:if test="${b.bbaby ==1}">
                		<c:out value=""></c:out>
                	</c:if>

  -->
	</body>
</html>
