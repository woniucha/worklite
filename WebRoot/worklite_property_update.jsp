<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>维护令牌信息</title>
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
		<form id="form1" name="form1" action="updatetoken!updateToken">
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
						<div align="right" class="STYLE7">令牌序列号：</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_id"/>"
								name="worklitetoken.token_id" disabled="disabled"/>						</label>				  </td>
					<td width="200">
						<div align="right" class="STYLE7">令牌UASS用户名：</div></td>
					<td width="202">
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_uass_name"/>"
								name="worklitetoken.token_uass_name" />						</label>				  </td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">令牌静态口令：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_pwd"/>"
								name="worklitetoken.token_pwd" />						</label>					</td>
					<td width="200">
						<div align="right" class="STYLE7">令牌6位PIN码：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_pin"/>"
								name="worklitetoken.token_pin" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">令牌所属地：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_location"/>"
								name="worklitetoken.token_location" />						</label>					</td>
					<td>
						<div align="right" class="STYLE7">令牌申请时间：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_reg_time"/>"
								name="worklitetoken.token_reg_time" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">令牌所有者：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_owner"/>"
								name="worklitetoken.token_owner" />						</label>					</td>
					<td>
						<div align="right" class="STYLE7">令牌归属处室：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_office"/>"
								name="worklitetoken.token_office" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">备注：					</div></td>
					<td colspan="1"><textarea value=<s:property value="worklitetoken.token_remarks"/>
					name="worklitetoken.token_remarks"></textarea></td>
					<td>
						<div align="right" class="STYLE7">令牌状态：					</div></td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_status"/>"
								name="worklitetoken.token_status" />						</label>					</td>
				</tr>
			</table>
		    <div align="center"><br>
              <input type="submit" name="Submit" value="提交" />
            </div>
		    <p>&nbsp;</p>
		</form>
</body>
</html>

