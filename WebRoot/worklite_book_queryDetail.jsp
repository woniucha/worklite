<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询图书</title>
<style type="text/css">
<!--
.STYLE2 {
	color: #333333;
	font-size: 14px;
	font-weight: bold;
	font-family: "微软雅黑";
}
.STYLE6 {color: #333333; font-family: "微软雅黑"; }
.STYLE8 {color: #666666; font-family: "微软雅黑"; font-weight: bold; }
-->
</style>
</head>

<body>
		<form id="form1" name="form1" action="book!findByPage_booklend">
			<div align="center" class="STYLE2"> 
			  <p>&nbsp;</p>
			  <p>图书详细信息 <br>
			    <br>
			  </p>
			</div>
			<table width="60%" border="0" align="center" bgcolor="#999999" cellpadding="1" cellspacing="1">
				
				<tr>
					<td width="197" height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">图书名称：				    </div>
				  </div></td>
					<td colspan="3" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_name" />
						</label>
					</span></td>
				</tr>
				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">作者：				    </div>
				  </div></td>
					<td width="215" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_writer" />
						</label>
					</span> </td>
					<td width="172" bgcolor="#FFFFFF"><div align="right" class="STYLE8">出版社：					</div></td>
					<td width="276" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_press" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">图书编号：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF" >
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_id" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">图书入库时间：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_savetime" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">图书价格：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_price" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  光盘：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_disk" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">图书状态：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitebook.book_status" />
						</label>
					</span>  </td>
				    <td bgcolor="#FFFFFF"><div align="right" class="STYLE8"> 图书借阅记录： </div></td>
				    <td bgcolor="#FFFFFF">&nbsp;&nbsp;
                      <input type="submit"  value="查看"></td>
                      <input type="hidden" name="pageNo" value="1"></td>
                      <input type="hidden" name="pageSize" value="10"></td>
                      <input type="hidden" name="worklitebook.book_id" value="<s:property value="worklitebook.book_id" />"></td>
				</tr>
			</table>
		</form>
</body>
</html>
