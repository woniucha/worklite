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
<title>借出令牌</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
</head>

	<body topmargin="0" leftmargin="0">
		<form action="token!lendToken">
			<table width="100%" border="0">
				<tr>
					<td height="50">
						<div align="center" class="STYLE21">
							领用令牌						</div>					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table width="100%" border="0">
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
										  令牌序列号：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitetoken.token_id"/>"
												name="worklitetokenlend.token_id" disabled="disabled">
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
										  领用人：										</div>									</td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitetokenlend.user_name"/>"
												name="worklitetokenlend.user_name">
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
										  领用时间：										</div>									</td>
									<td width="51%">
										<label>
												<input type="text" id="worklitetokenlend.use_time"  name="worklitetokenlend.use_time" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
										</label>
									</td>
								</tr>
								<tr>
									<td width="49%">
										<div align="right" class="STYLE22">
										  发放人：										</div>									</td>
									<td>
										<label>
											<input type="text"
												value="<s:property value="worklitetokenlend.ffang_name"/>"
												name="worklitetokenlend.ffang_name">
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
							<input type="hidden" name="worklitetoken.token_id" value="<s:property value="worklitetoken.token_id"/>">
						</p>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
