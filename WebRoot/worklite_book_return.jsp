<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.STYLE22 {
	font-family: "微软雅黑";
	font-weight: bold;
	color: #333333;
}
.STYLE23 {
	font-size: 14px;
	font-weight: bold;
	font-family: "微软雅黑";
	color: #333333;
}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>归还图书</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
</head>

	<body topmargin="0" leftmargin="0">
		<form action="book!backBook">
			<table width="80%" border="0" align="center">
				<tr>
					<td height="50">
						<div align="center" class="STYLE23">
						  归还图书						</div>				  </td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
											图书序列号：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitebookbor.book_id"/>"
												name="worklitebookbor.book_id" readonly="true"/>
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
												name="worklitebookbor.book_name" readonly="true"/>
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
												name="worklitebookbor.book_borrowp" disabled="disabled"/>
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
									<td width="49%">
										<div align="right" class="STYLE22">
										  借阅时间：										</div>								  </td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitebookbor.book_borrowtime"/>"
												name="worklitebookbor.book_borrowtime" disabled="disabled"/>										</label>									</td>
								</tr>
								
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  归还时间：										</div>								  </td>
									<td>
									<input type="text" id="worklitebookbor.book_returntime"  name="worklitebookbor.book_returntime" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
									</td>
								</tr>
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  归还人：										</div>								  </td>
									<td>
										<input type="text"
											value="<s:property value="worklitebookbor.book_returnp"/>"
											name="worklitebookbor.book_returnp"/>									</td>
								</tr>
								
							</table>
						</div>
					</td>
				</tr>

				<tr>
					<td height="54">
						<p align="center">
							<input type="submit" name="Submit" value="确认归还">
							<input type="reset" name="Submit2" value="取消">
						</p>
					</td>
				</tr>
		  </table>
		</form>
	</body>
</html>
