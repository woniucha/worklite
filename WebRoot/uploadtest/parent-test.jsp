<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上传测试</title>
<script type="text/javascript">

function ShowDialog(url){
var iWidth=560;
var iHeight=300;
var iTop=(window.screen.height-iHeight-100)/2;
var iLeft=(window.screen.width-iWidth-100)/2;
var returnValue=window.showModalDialog(url,"newwindow","dialogHeight:"+iHeight+"px;dialogWidth:"+iWidth+"0px;toolbar:no;menubar:no;scrollbars:no;resizable:no;location:no;status:no;left:200px;top:100px;");
document.getElementByName("parent").innerText=returnValue;
}

function openWindow(){
open('','_blank');
}
</script>
</head>
<body>
<form action="" method="post">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="87%" rowspan="2"><input name="parent" type="text"></td>
          <td width="13%">
		    <br>
		    <p>
		      <input name="upload" id="upload" type="button" onClick="ShowDialog('upload_result.jsp')" value="测试传值" />
			  <input name="openw" id="openw" type="button" onClick="openWindow()" value="直接打开" />
            </p>
	      </td>
        </tr>
        <tr>
          <td height="39">&nbsp;</td>
        </tr>
      </table>
</form>
</body>
</html>
