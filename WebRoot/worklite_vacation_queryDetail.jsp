<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>请假申请单详细信息</title>
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
.STYLE9 {font-family: "微软雅黑"}
.STYLE10 {
	color: #666666;
	font-weight: bold;
}
-->
</style>
</head>

<body>
			<div align="center" class="STYLE2"> 
			  <p>	请假申请单
			    <br>
			  </p>
</div>
			<table width="80%" border="0" align="center" bgcolor="#999999" cellpadding="1" cellspacing="1">
				
				<tr>
					<td width="109" height="40" bgcolor="#FFFFFF">
				  <div align="right" class="STYLE8 STYLE9 STYLE10">请假单编号：				  </div></td>
					<td width="108" bgcolor="#FFFFFF">
						<span class="STYLE6 STYLE9">
						&nbsp;
						<label>
							<s:property value="worklitevacation.vacation_id" />
						</label>
				  </span></td>
					<td width="82" bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  <div align="right">优先级： </div>
				  </div></td>
					<td width="115" bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;
						<label>
							<s:property value="worklitevacation.vacation_priority" />
						</label>
				  </span> </td>
			      <td width="104" bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">假期类型：</span></div></td>
				    <td width="111" bgcolor="#FFFFFF" class="STYLE9">&nbsp;<s:property value="worklitevacation.vacation_type" /></td>
			    </tr>
				<tr>
				  <td height="40" bgcolor="#FFFFFF"><div align="right" class="STYLE8">请假人：</div></td>
				  <td bgcolor="#FFFFFF"><span class="STYLE9">&nbsp;
			      <s:property value="worklitevacation.vacation_person" />
				  </span></td>
				  <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE9">职务：</span></div></td>
				  <td bgcolor="#FFFFFF"><span class="STYLE9">&nbsp;
			      <s:property value="worklitevacation.vacation_post" />
				  </span></td>
			      <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">项目名称：</span></div></td>
			      <td bgcolor="#FFFFFF" class="STYLE9"">&nbsp;<s:property value="worklitevacation.vacation_project" />
			      </td>
		      </tr>
				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">公司名称： </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6 STYLE9"><label>
							&nbsp;<s:property value="worklitevacation.vacation_corporation" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  <div align="right">公司审核人：					</div>
					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_corporation_verify" />
						</label>
					</span> </td>
				    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">行方审核人：</span></div></td>
				    <td bgcolor="#FFFFFF" class="STYLE9">&nbsp;<s:property value="worklitevacation.vacation_bank_verify" /></td>
			    </tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">假期天数： </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6 STYLE9">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_day_num" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  <div align="right">开始时间：					</div>
					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_startdate" />
						</label>
					</span> </td>
				    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">结束时间：</span></div></td>
				    <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitevacation.vacation_enddate" /></td>
			    </tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">本年度已请假天数： </div>
				  </div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6 STYLE9">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_already_day_num" />
						</label>
					</span> </td>
					<td bgcolor="#FFFFFF"><div align="right" class="STYLE8">
					  <div align="right">提交时间：					</div>
					</div></td>
					<td bgcolor="#FFFFFF">
						<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_commitdate" />
						</label>
					</span> </td>
				    <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">请假单状态：</span></div></td>
				    <td bgcolor="#FFFFFF" class="STYLE9">&nbsp;<s:property value="worklitevacation.vacation_status" /></td>
			    </tr>

				<tr>
					<td height="40" bgcolor="#FFFFFF">
					<div align="center" class="STYLE8">
					  <div align="right">请假原因： </div>
				  </div></td>
					<td colspan="5" bgcolor="#FFFFFF">
					<span class="STYLE6">
						&nbsp;<label>
							<s:property value="worklitevacation.vacation_reason" />
						</label>
				      </span> </td>
				</tr>
				<tr>
				  <td height="40" bgcolor="#FFFFFF"><div align="right" class="STYLE8">公司审核意见：</div></td>
				  <td colspan="3" bgcolor="#FFFFFF">&nbsp;<s:property value="worklitevacation.vacation_corpopinion" /></td>
				  <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">公司审核时间：</span></div></td>
				  <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitevacation.vacation_corpdate" /></td>
			  </tr>
				<tr>
				  <td height="40" bgcolor="#FFFFFF"><div align="right" class="STYLE8">行方审核意见：</div></td>
				  <td colspan="3" bgcolor="#FFFFFF">&nbsp;<s:property value="worklitevacation.vacation_bankopinion" /></td>
				  <td bgcolor="#FFFFFF"><div align="right"><span class="STYLE8">行方审核时间：</span></div></td>
				  <td bgcolor="#FFFFFF">&nbsp;<s:property value="worklitevacation.vacation_bankdate" /></td>
			  </tr>
</table>
</body>
</html>
