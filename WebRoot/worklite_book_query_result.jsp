<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>ͼ�����</title>
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
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="9%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE5">ͼ����</div></td>
    <td width="38%" bgcolor="#999999"><div align="center" class="STYLE6">ͼ������</div></td>
    <td width="14%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE6">״̬</div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
    <td width="5%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">����</div></td>
  </tr>

     <s:iterator value="pageModelByIndication.list" id="worklitebook">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebook.book_id"/></span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;<span class="STYLE1"><s:property value="#worklitebook.book_name"/></span></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebook.book_writer"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><s:property value="#worklitebook.book_status"/></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="book!queryBookDetail?worklitebook.book_id=<s:property value="#worklitebook.book_id"/>">����</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="updatebook!updateBookDetail?worklitebook.book_id=<s:property value="#worklitebook.book_id"/>">ά��</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="book!useQuery?worklitebook.book_id=<s:property value="#worklitebook.book_id"/>">����</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="book!backQuery?worklitebook.book_id=<s:property value="#worklitebook.book_id"/>">�黹</a></span></div></td>
    <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="book!annulBook?worklitebook.book_id=<s:property value="#worklitebook.book_id"/>">ע��</a></span></div></td>
  </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="9" bgcolor="#FFFFFF"><div align="right">��<s:property value="pageModelByIndication.pageNo"/>ҳ/��<s:property value="pageModelByIndication.totalPages"/>ҳ <s:property value="pageModelByIndication.totalRecords"/>����¼

    <a href="book!findByCondition?pageNo=<s:property value="pageModelByIndication.topPageNo"/>&pageSize=10&worklitebook.book_id=<s:property value="pageModelByIndication.worklitebook.book_id"/>&worklitebook.book_name=<s:property value="
	pageModelByIndication.worklitebook.book_name"/>&worklitebook.book_status=<s:property value="
	pageModelByIndication.worklitebook.book_status"/>&worklitebook.book_writer=<s:property value="
	pageModelByIndication.worklitebook.book_writer"/>">[��ҳ]</a>

    <a href="book!findByCondition?pageNo=<s:property value="pageModelByIndication.previousPageNo"/>&pageSize=10&worklitebook.book_id=<s:property value="pageModelByIndication.worklitebook.book_id"/>&worklitebook.book_name=<s:property value="
	pageModelByIndication.worklitebook.book_name"/>&worklitebook.book_status=<s:property value="
	pageModelByIndication.worklitebook.book_status"/>&worklitebook.book_writer=<s:property value="
	pageModelByIndication.worklitebook.book_writer"/>">[ǰҳ]</a>
	
	<a href="book!findByCondition?pageNo=<s:property value="pageModelByIndication.nextPageNo"/>&pageSize=10&worklitebook.book_id=<s:property value="pageModelByIndication.worklitebook.book_id"/>&worklitebook.book_name=<s:property value="
	pageModelByIndication.worklitebook.book_name"/>&worklitebook.book_status=<s:property value="
	pageModelByIndication.worklitebook.book_status"/>&worklitebook.book_writer=<s:property value="
	pageModelByIndication.worklitebook.book_writer"/>">[��ҳ]</a>
	
<a href="book!findByCondition?pageNo=<s:property value="pageModelByIndication.bottomPageNo"/>&pageSize=10&worklitebook.book_id=<s:property value="pageModelByIndication.worklitebook.book_id"/>&worklitebook.book_name=<s:property value="
	pageModelByIndication.worklitebook.book_name"/>&worklitebook.book_status=<s:property value="
	pageModelByIndication.worklitebook.book_status"/>&worklitebook.book_writer=<s:property value="
	pageModelByIndication.worklitebook.book_writer"/>">[ĩҳ]</a>
	</div></td>
    </tr>
</table>

</body>
</html>
