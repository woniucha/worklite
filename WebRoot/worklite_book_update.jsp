<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>维护图书信息</title>
<style type="text/css">
<!--
.STYLE1 {
	font-family: "微软雅黑";
	font-weight: bold;
	font-size: 14px;
}
.STYLE7 {font-family: "微软雅黑"; color: #666666; font-weight: bold; }
-->
</style>
</head>

<body>
		<form id="form1" name="form1" action="updatebook!updateBook">
			<s:hidden value="oldtokenid" name="oldtokenid"></s:hidden>
			<div align="center">
			  <p class="STYLE1 STYLE1"><br>
		      修改图书信息<br>
			  <br>
			  </p>
			  </div>
			<table width="50%" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#999999">
				
				<tr bgcolor="#FFFFFF">
					<td width="200" height="40">
						<div align="right" class="STYLE7">图书编号：</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_id"/>"
								name="worklitebook.book_id" disabled="disabled"/>						</label>				  </td>
					<td width="200">
						<div align="right" class="STYLE7">图书名称：</div></td>
					<td width="202">
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_name"/>"
								name="worklitebook.book_name" />						</label>				  </td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">作者：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_writer"/>"
								name="worklitebook.book_writer" />						</label>					</td>
					<td width="200">
						<div align="right" class="STYLE7">出版社：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_press"/>"
								name="worklitebook.book_press" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">图书入库时间：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_savetime"/>"
								name="worklitebook.book_savetime" />						</label>					</td>
					<td>
						<div align="right" class="STYLE7">图书价格：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_price"/>"
								name="worklitebook.book_price" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">光盘：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_disk"/>"
								name="worklitebook.book_disk" />						</label>					</td>
					<td>
						<div align="right" class="STYLE7">图书状态：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitebook.book_status"/>"
								name="worklitebook.book_status" readonly="yes"/>						</label>					</td>
				</tr>

				
			</table>
		    <div align="center"><br>
              <input type="submit" name="Submit" value="提交" />
              <input type="hidden" name="worklitebook.book_id" value="<s:property value="worklitebook.book_id"/>" />
            </div>
		    <p>&nbsp;</p>
		</form>
</body>
</html>

