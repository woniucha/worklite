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

.STYLE7 {
	font-family: "微软雅黑";
	color: #666666;
	font-weight: bold;
}
-->
</style>
	</head>

	<body>
		<form id="form1" name="form1" action="updatetoken!updateToken">
			<s:hidden value="oldtokenid" name="oldtokenid"></s:hidden>
			<div align="center">
				<p class="STYLE1 STYLE1">
					<br>
					修改令牌信息
					<br>
					<br>
				</p>
			</div>
			<table width="50%" border="0" align="center" cellpadding="1"
				cellspacing="0" bgcolor="#999999">
			  <tr bgcolor="#FFFFFF">
                <td height="40"><div align="right" class="STYLE7"> 令牌系统ID： </div></td>
			    <td><label>
                  <input type="text"
								value="<s:property value="worklitetoken.token_id"/>
			      "
			      name="worklitetoken.token_id" disabled="disabled" /> </label>                </td>
			    <td><div align="right" class="STYLE7"> 令牌序列号： </div></td>
			    <td><label>
                  <input type="text"
								value="<s:property value="worklitetoken.token_no"/>
			      "
			      name="worklitetoken.token_no" /> </label>                </td>
		      </tr>

				<tr bgcolor="#FFFFFF">
					<td width="200" height="40">
						<div align="right" class="STYLE7">应用系统：						</div>					</td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_system"/>
							"
								name="worklitetoken.token_system"  />						</label>					</td>
					<td width="200">
						<div align="right" class="STYLE7">
							令牌UASS用户名：						</div>					</td>
					<td width="202">
						<label>
							<input type="text"value="<s:property value="worklitetoken.token_uass_name"/>"
								name="worklitetoken.token_uass_name" />						</label>					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">
							令牌静态口令：						</div>					</td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_pwd"/>"
								name="worklitetoken.token_pwd" />						</label>					</td>
					<td width="200">
						<div align="right" class="STYLE7">
							令牌6位PIN码：						</div>					</td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_pin"/>"
								name="worklitetoken.token_pin" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">
							令牌所属地：						</div>					</td>
					   <td>
					   <label>
                        <select name="worklitetoken.token_location" id="token_location"  >
                         <option value="<s:property value="worklitetoken.token_location"/>" ><s:property value="worklitetoken.token_location"/></option>
						 <option value="">请选择</option>
                         <option value="北京数据中心">北京数据中心</option>
                         <option value="武汉数据中心">武汉数据中心</option>
                        </select>
                         </label></td>
                         
				 <td class="STYLE7"><div align="right" class="STYLE19">
                     <div align="right">令牌申请时间：</div>
                   </div></td>
                <td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_reg_time"/>"
								name="worklitetoken.token_reg_time" />						</label>					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td height="40">
						<div align="right" class="STYLE7">
							令牌所有者：						</div>					</td>
					<td>
						<label>
							<input type="text"
								value="<s:property value="worklitetoken.token_owner"/>"
								name="worklitetoken.token_owner" />						</label>					</td>
					<td>
						<div align="right" class="STYLE7">
							令牌归属处室：						</div>					</td>
					<td><label>
		                <select name="worklitetoken.token_office" id="token_office">
						  <option value="<s:property value="worklitetoken.token_office"/>" ><s:property value="worklitetoken.token_office"/></option>
              <option value="">请选择</option>
              <option value="开发一处">开发一处</option>
              <option value="开发二处">开发二处</option>
              <option value="开发三处">开发三处</option>
              <option value="委托研发管理处">委托研发管理处</option>
              <option value="技术管理处">技术管理处</option>
              <option value="需求分析处">需求分析处</option>
              <option value="项目处">项目处</option>
              <option value="测试与推广支持处">测试与推广支持处</option>
              <option value="功能集成测试处">功能集成测试处</option>
              <option value="非功能集成测试处">非功能集成测试处</option>
              <option value="测试管理处">测试管理处</option>
              <option value="测试环境服务管理处">测试环境服务管理处</option>
	                    </select>
                    </label></td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td>
						<div align="right" class="STYLE7">
							令牌状态：						</div>					</td>
				
					<td><label>
		<select name="worklitetoken.token_status" id="token_status" disabled="disabled">
	     <option><s:property value="worklitetoken.token_status"/></option>
	    </select>
      </label></td>
					
					
					<td>
						<div align="right" class="STYLE7">
							令牌权限：						</div>					</td>
					 <td><label>
        <select name="worklitetoken.token_root" id="token_root">
		 <option value="<s:property value="worklitetoken.token_root"/>" ><s:property value="worklitetoken.token_root"/></option>
          <option value="">请选择</option>
          <option value="生产环境">生产环境</option>
          <option value="迁移环境">迁移环境</option>
          <option value="演练环境">演练环境</option>
          <option value="生产&&迁移">生产&&迁移</option>
          <option value="生产&&演练">生产&&演练</option>
          <option value="迁移&&演练">迁移&&演练</option>
        </select>
      </label></td>
				</tr>
				<tr bgcolor="#FFFFFF">
                  <td height="40"><div align="right" class="STYLE7">申请请求单编号： </div></td>
				  <td><label>
                    <input type="text"
								value="<s:property value="worklitetoken.token_request"/>
				    "
				    name="worklitetoken.token_request" /> </label>
                  </td>
				  <td><div align="right" class="STYLE7">注销请求单编号： </div></td>
				  <td><label>
                    <input type="text"
								value="<s:property value="worklitetoken.token_logout"/>
				    "
				    name="worklitetoken.token_logout" /> </label>
                  </td>
			  </tr>
				
				<tr bgcolor="#FFFFFF">					
					<td height="40">
						<div align="right" class="STYLE7">令牌所用人手机号：						</div>					</td>
					<td colspan="1"><label>
					  <input name="text" type="text"
								value="<s:property value="worklitetoken.token_phone"/>
"
				    name="worklitetoken.token_phone"/> </label></td>
					
					<td><div align="right" class="STYLE7">备注： </div></td>
					<td><textarea  name="textarea"><s:property value="worklitetoken.token_remarks"/>
					</textarea></td>
				</tr>
			</table>
			<div align="center">
				<br>
				<input type="submit" name="Submit" value="提交" />
				<input type="hidden" name="worklitetoken.token_id" value="<s:property value="worklitetoken.token_id"/>" />
				<input type="hidden" name="worklitetoken.token_status" value="<s:property value="worklitetoken.token_status"/>" />
			</div>
			<p>&nbsp;
				
			</p>
		</form>
	</body>
</html>

