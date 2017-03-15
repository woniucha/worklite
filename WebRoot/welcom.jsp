<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" 
  pageEncoding="UTF-8"%>	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String name=request.getParameter("name");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>welcom</title>
    
	 </head>
  
  <body>
   <%=name %>登陆成功<br />

   
  </body>
</html>
