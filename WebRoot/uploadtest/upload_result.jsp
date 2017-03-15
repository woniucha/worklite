<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上传测试</title>
<script type="text/javascript">

function closeDiag(){
   window.opener=null;
   window.close();
}

function ok(){
   var Value=document.getElementByName("text1");
   for(var i=0;i<Value.length;i++)
   {
      
		    window.returnValue=Value[i].value;
			window.close();

    }
		 
}
</script>
</head>
<body>
<input name="text1" type="text" value="chenzhujun"><br>
<input name="text1" type="text" value="yaoqin"><br>
<input name="text1" type="text" value="chenfeiyao"><br>
<input name="text1" type="text" value="chensiyao"><br><br>
<input name="" type="button" onClick="ok()" value="传值给主窗口" />
<input name="" type="button" onClick="closeDiag()" value="取消" />
</body>
</html>
