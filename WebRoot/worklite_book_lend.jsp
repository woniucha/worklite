<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.STYLE21 {
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: bold;
}
.STYLE22 {
	color: #666666;
	font-weight: bold;
	font-family: "微软雅黑";
}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>借阅图书</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>

</head>

	<body topmargin="0" leftmargin="0">
		<form action="book!lendBook">
			<table width="100%" border="0">
				<tr>
					<td height="50">
						<div align="center" class="STYLE21">
							借阅图书						</div>					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
										 图书编号：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitebook.book_id"/>"
												name="worklitebookbor.book_id" readonly="yes">
										</label>
										<label></label>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
										 图书名称：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitebook.book_name"/>"
												name="worklitebookbor.book_name" readonly="yes">
										</label>
										<label></label>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
										  借阅人：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitebookbor.book_borrowp"/>"
												name="worklitebookbor.book_borrowp">
										</label>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td>
										<div align="right" class="STYLE22">
										 借阅时间：										</div>									</td>
									<td width="51%">
										<label>
										<input type="text" id="worklitebookbor.book_borrowtime"  name="worklitebookbor.book_borrowtime" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
										</label>
									</td>
								</tr>
								
							</table>
						</div>
					</td>
				</tr>

				<tr>
					<td height="54">
						<p align="center">
							<input type="submit" name="Submit" value="确认">
							<input type="reset" name="Submit2" value="取消">
							<input type="hidden" name="worklitebook.book_id" value="<s:property value="worklitebook.book_id"/>">
						</p>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
