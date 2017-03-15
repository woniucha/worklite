<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询令牌</title>
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
		<form id="form1" name="form1" action="login!logincheck">
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
					  <div align="right">令牌序列号：				    </div>
				  </div></td>
					<td width="215" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_id" />
						</label>
					</span></td>
					<td width="172" bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  令牌UASS用户名：					</div></td>
					<td width="276" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_uass_name" />
						</label>
					</span> </td>
				</tr>
				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">令牌静态口令：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_pwd" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  令牌6位PIN码：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_pin" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">令牌所属地：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_location" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  令牌申请时间：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_reg_time" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">令牌所有者：				    </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_owner" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  令牌归属处室：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_office" />
						</label>
					</span> </td>
				</tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">备注：				    </div>
				  </div></td>
					<td colspan="1" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_remarks" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  令牌状态：					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitetoken.token_status" />
						</label>
					</span> </td>
				</tr>
			</table>
		</form>
</body>
</html>
