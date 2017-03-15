<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>详细用户信息</title>
<style type="text/css">
<!--
.STYLE1 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form name="userinfo" method="post" action="user!updateUserInfo">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="80%" border="0" align="center" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        <tr>
          <td width="10%" height="30" bgcolor="#FFFFFF"><span class="STYLE1" >用户姓名：</span></td>
          <td width="21%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp<input type="text" disabled="disabled"
								value="<s:property value="workliteuserinfo.user_name"/>"
								/></label></td>
          <td width="18%" bgcolor="#FFFFFF"><span class="STYLE1">用户UASS账户：</span></td>
          <td width="17%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input 
								value="<s:property value="workliteuserinfo.user_account"/>"
								disabled="disabled" />
          </label></td>
          <td width="11%" bgcolor="#FFFFFF"><span class="STYLE1">性别：</span></td>
          <td width="23%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input disabled="disabled" value="<s:property value="workliteuserinfo.user_sex"/>"/>
          
          </label></td>
        </tr>
        
                <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户登录名称：</span></td>
		   <td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;<input type="text" disabled="disabled" id="workliteuserinfo.user_name" name="workliteuserinfo.user_name" value="<s:property value="workliteuserinfo.user_name"/>"/>
      </label></td>
        <!--  <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" id="workliteuserinfo.user_birthday"  name="workliteuserinfo.user_birthday" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"  id="workliteuserinfo.user_birthday"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">密码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="password" disabled="disabled"
								name="workliteuserinfo.user_pwd" id="workliteuserinfo.user_pwd" value="<s:property value="workliteuserinfo.user_pwd"/>"/>
          </label></td>-->
          <td bgcolor="#FFFFFF"></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;</td>
        </tr>
        
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">出生年月：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_birthday"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">籍贯：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_place"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">民族：</span></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_nation"/>"
								disabled="disabled" />
          </td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">政治面貌：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input disabled="disabled" value="<s:property value="workliteuserinfo.user_political"/>"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学历：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input disabled="disabled" value="<s:property value="workliteuserinfo.user_education"/>"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">专业：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_specialty"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">毕业院校：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_school"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">毕业时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_graduate_age"/>"
								disabled="disabled" />
			</label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作年限：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input disabled="disabled" value="<s:property value="workliteuserinfo.user_work_age"/>"/>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">个人邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_mail"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">手机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_phone"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">座机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_telephone"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">住址：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_address"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮编：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_postcode"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">方位：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input disabled="disabled" value="<s:property value="workliteuserinfo.user_education"/>"/>
              
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">所属公司：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_corporation"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">所属部门：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_department"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">联系电话:</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_deptphone"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">职务：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_post"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职务起始时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_poststart"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职称：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_position"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目经理：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager_phone"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager_mail"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目总监：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector_phone"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector_mail"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目销售：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market_phone"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market_mail"/>"
								disabled="disabled" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">身份证号码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_identification"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">参加项目：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project"/>"
								disabled="disabled" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">用户状态：</span></td>
          <td bgcolor="#FFFFFF"><label >
            &nbsp;&nbsp;<s:if test='workliteuserinfo.user_status ==1'>正常</s:if><s:else>注销</s:else>
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学习经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<textarea disabled="disabled"
			 cols="120"><s:property value="workliteuserinfo.user_learnexp"/></textarea>
          </label></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea disabled="disabled"
			 cols="120"><s:property value="workliteuserinfo.user_experience"/></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">技能特长：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea disabled="disabled"
			  cols="120"><s:property value="workliteuserinfo.user_skill"/></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">兴趣爱好：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea disabled="disabled"
			  cols="120"><s:property value="workliteuserinfo.user_interest"/></textarea></td>
          </tr>
        <tr>
        <tr>
          <td colspan="6" bgcolor="#FFFFFF"><label></label>
            <label><!--
            <div align="center">
              <input type="submit" name="Submit" value="提交">
            </div>
            --></label></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
