<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>ͼ�������ϸ��Ϣ</title>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
.STYLE5 {font-family: "΢���ź�"}
.STYLE6 {color: #FFFFFF; font-family: "΢���ź�"; }
-->
</style>
</head>

<body>
<p>&nbsp;</p>
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="12%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE5">���ñ��</div></td>
    
    <td width="13%" bgcolor="#999999"><div align="center" class="STYLE6">������</div></td>
    
    <td width="16%" bgcolor="#999999"><div align="center" class="STYLE6">����ʱ��</div></td>
    <td width="30%" bgcolor="#999999"><div align="center" class="STYLE6">�黹��</div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6">�黹ʱ��</div></td>
    
    
  </tr>

     <s:iterator value="pageModel.list" id="worklitebookbor">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebookbor.book_registerid"/></span></div></td>
    
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebookbor.book_borrowp"/></span></div></td>
    
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebookbor.book_borrowtime"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebookbor.book_returnp"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebookbor.book_returntime"/></span></div></td>
   
    </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="10" bgcolor="#FFFFFF"><div align="right">��<s:property value="pageModel.pageNo"/>ҳ/��<s:property value="pageModel.totalPages"/>ҳ <s:property value="pageModel.totalRecords"/>����¼

	<s:url action="token!findByPage_booklend" var="Top">
    <s:param name="pageNo"><s:property value="pageModel.topPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{Top}">[��ҳ]</s:a>

	<s:url action="token!findByPage_booklend" var="previous">
    <s:param name="pageNo"><s:property value="pageModel.previousPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{previous}">[ǰҳ]</s:a>

    <s:url action="token!findByPage_booklend" var="next">
    <s:param name="pageNo"><s:property value="pageModel.nextPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{next}">[��ҳ]</s:a>
	
	<s:url action="token!findByPage_booklend" var="bottom">
    <s:param name="pageNo"><s:property value="pageModel.bottomPageNo"/></s:param>
    <s:param name="pageSize">10</s:param>
    </s:url>
    <s:a href="%{bottom}">[ĩҳ]</s:a>
	</div></td>
    </tr>
</table>

</body>
</html>
