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
<title>归还令牌</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
</head>

	<body topmargin="0" leftmargin="0">
		<form action="token!backtoken">
			<table width="80%" border="0" align="center">
				<tr>
					<td height="50">
						<div align="center" class="STYLE23">
						  归还令牌						</div>				  </td>
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
												value="<s:property value="worklitetokenlend.token_id"/>"
												name="worklitetokenlend.token_id" readonly="true"/>
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
												name="worklitetokenlend.user_name" disabled="disabled"/>
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
										  领用时间：										</div>								  </td>
									<td width="51%">
										<label>
											<input type="text"
												value="<s:property value="worklitetokenlend.use_time"/>"
												name="worklitetokenlend.use_time" disabled="disabled"/>										</label>									</td>
								</tr>
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  发放人：										</div>								  </td>
									<td>
										<label>
											<input type="text"
												value="<s:property value="worklitetokenlend.ffang_name"/>"
												name="worklitetokenlend.ffang_name" disabled="disabled"/>										</label>									</td>
								</tr>
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  归还时间：										</div>								  </td>
									<td>
										<input type="text"
											value="<s:property value="worklitetokenlend.back_time"/>"
											name="worklitetokenlend.back_time" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>									</td>
								</tr>
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  归还人：										</div>								  </td>
									<td>
										<input type="text"
											value="<s:property value="worklitetokenlend.backer_name"/>"
											name="worklitetokenlend.backer_name"/>									</td>
								</tr>
								<tr>
									<td>
										<div align="right" class="STYLE22">
										  入库人：										</div>								  </td>
									<td>
										<input type="text"
											value="<s:property value="worklitetokenlend.rk_name"/>"
											name="worklitetokenlend.rk_name"/>									</td>
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
