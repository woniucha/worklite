<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" charset="GBK" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>

<title>修改用户信息</title>
<style type="text/css">
<!--
.STYLE1 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form name="userinfo"  id="userinfo" method="post" action="user!updateUser">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
      <td><input type="hidden" name="workliteuserinfo.user_id" value="<s:property value="workliteuserinfo.user_id"/>">
      </td>
    </tr>
    <tr>
      <td><table width="80%" border="0" align="center" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        <tr>
          <td width="10%" height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户姓名：</span></td>
          <td width="21%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp<input type="text"
								value="<s:property value="workliteuserinfo.user_name"/>"
								name="workliteuserinfo.user_name" /></label></td>
          <td width="18%" bgcolor="#FFFFFF"><span class="STYLE1">用户UASS账户：</span></td>
          <td width="17%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_account"/>"
								name="workliteuserinfo.user_account" />
          </label></td>
          <td width="11%" bgcolor="#FFFFFF"><span class="STYLE1">性别：</span></td>
          <td width="23%" bgcolor="#FFFFFF">
            &nbsp;&nbsp;<select name="workliteuserinfo.user_sex" >
            <s:if test='%{workliteuserinfo.user_sex == "男"}'>
              <option value="男" selected="selected">男</option>
              <option value="女">女</option>
            </s:if>
            <s:else>
              <option value="男" >男</option>
              <option value="女" selected="selected">女</option>
            </s:else>
            </select>
          </td>
        </tr>
        
                <tr>
         <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户登录名称：</span></td>
		   <td width="15%" bgcolor="#FFFFFF"><label>
        &nbsp;&nbsp;
        <s:property value="workliteuserlogin.user_name"/>
        <input type="hidden"  name="workliteuserlogin.user_name" value="<s:property value="workliteuserlogin.user_name"/>"/>
      </label></td>
        <!--  <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" id="workliteuserinfo.user_birthday"  name="workliteuserinfo.user_birthday" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"  id="workliteuserinfo.user_birthday"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">密码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="password" name="workliteuserlogin.user_pwd" id="workliteuserlogin.user_pwd" value="<s:property value="workliteuserlogin.user_pwd"/>"/>
          </label></td>-->
          <td bgcolor="#FFFFFF"></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;</td>
        </tr>
        
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">出生年月：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_birthday"/>"
								name="workliteuserinfo.user_birthday" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">籍贯：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_place"/>"
								name="workliteuserinfo.user_place" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">民族：</span></td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_nation"/>"
								name="workliteuserinfo.user_nation" />
         </td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">政治面貌：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_political">
            <s:if test="workliteuserinfo.user_political == '群众'">
              <option value="群众" selected="selected">群众</option>
              <option>中共党员</option>
              <option>其他民主党派</option>
            </s:if>
            <s:elseif test="workliteuserinfo.user_political == '中共党员'">
              <option>群众</option>
              <option value="中共党员" selected="selected">中共党员</option>
              <option>其他民主党派</option>
            </s:elseif>
            <s:else>
              <option>群众</option>
              <option>中共党员</option>
              <option value="其他民主党派" selected="selected">其他民主党派</option>
            </s:else>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学历：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_education">
            <s:if test="workliteuserinfo.user_education == '本科'">
              <option value="本科" selected="selected">本科</option>
              <option>研究生</option>
            </s:if>
            <s:else>
              <option>本科</option>
              <option value="研究生" selected="selected">研究生</option>
             </s:else>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">专业：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_specialty"/>"
								name="workliteuserinfo.user_specialty" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">毕业院校：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_school"/>"
								name="workliteuserinfo.user_school" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">毕业时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_graduate_age"/>"
								name="workliteuserinfo.user_graduate_age" />
			</label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作年限：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_work_age" value="<s:property value="workliteuserinfo.user_work_age"/>">
              <option>2年内</option>
              <option>2年</option>
              <option>3年</option>
              <option>4年</option>
              <option>5年</option>
              <option>6年</option>
              <option>7年</option>
              <option>8年</option>
              <option>9年</option>
              <option>10年以上(含10年)</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">个人邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_mail"/>"
								name="workliteuserinfo.user_mail" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">手机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_phone"/>"
								name="workliteuserinfo.user_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">座机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_telephone"/>"
								name="workliteuserinfo.user_telephone" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">住址：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_address"/>"
								name="workliteuserinfo.user_address" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮编：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_postcode"/>"
								name="workliteuserinfo.user_postcode" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">方位：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_location" value="<s:property value="workliteuserinfo.user_location"/>">
              <option>二环内</option>
              <option>二环至三环内</option>
              <option>三环至四环内</option>
              <option>四环至五环内</option>
              <option>五环至六环内</option>
              <option>六环外</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">所属公司：</span></td>
          <td bgcolor="#FFFFFF">
          <select name="workliteuserinfo.user_corporation" >
            		<option><s:property value="workliteuserinfo.user_corporation"/></option>
                    <option>北京金迅融技术有限公司</option>
                    <option>北京宇信科技集团股份有限公司</option>
                    <option>上海安硕信息技术股份有限公司</option>
                    <option>北京中信网络科技股份有限公司</option>
                    <option>京北方信息技术股份有限公司</option>
                    <option>天阳宏业科技股份有限公司</option>
          </select>
          </td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">所属部门：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_department"/>"
								name="workliteuserinfo.user_department" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">联系电话:</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_deptphone"/>"
								name="workliteuserinfo.user_deptphone" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">职务：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_post"/>"
								name="workliteuserinfo.user_post" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职务起始时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_poststart"/>"
								name="workliteuserinfo.user_poststart" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职称：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_position"/>"
								name="workliteuserinfo.user_position" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目经理：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager"/>"
								name="workliteuserinfo.user_project_manager" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager_phone"/>"
								name="workliteuserinfo.user_project_manager_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_manager_mail"/>"
								name="workliteuserinfo.user_project_manager_mail" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目总监：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector"/>"
								name="workliteuserinfo.user_project_inspector" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector_phone"/>"
								name="workliteuserinfo.user_project_inspector_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_inspector_mail"/>"
								name="workliteuserinfo.user_project_inspector_mail" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目销售：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market"/>"
								name="workliteuserinfo.user_project_market" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market_phone"/>"
								name="workliteuserinfo.user_project_market_phone" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_project_market_mail"/>"
								name="workliteuserinfo.user_project_market_mail" />
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">身份证号码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text"
								value="<s:property value="workliteuserinfo.user_identification"/>"
								name="workliteuserinfo.user_identification" />
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">参加项目：</span></td>
          <td bgcolor="#FFFFFF">
          <SELECT name="workliteuserinfo.user_project" id="workliteuserinfo.user_project">
                  <option value="<s:property value="workliteuserinfo.user_project"/>"><s:property value="workliteuserinfo.user_project"/></option>
                  <option value="">请选择项目</option>
                  <option>2016年村镇银行核心系统驻场运维服务</option>
                  <option>2016年村镇银行前置及周边系统驻场运维服务</option>
                  <option>2016年村镇银行信贷系统驻场运维服务</option>
                  <option>2016年网络学习系统驻场运维服务</option>
                  <option>2016年OA系统驻场运维服务</option>
                  <option>2016年邮件系统驻场运维服务</option>
                  <option>2016年法律、纪检、安保系统驻场运维服务</option>
                  <option>2016年IT管理类系统驻场运维服务</option>
          </SELECT>
          </td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">用户状态：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="workliteuserinfo.user_status" id="user_status">
            	 <s:if test="workliteuserinfo.user_status== 1">
                  <option value="1" selected="selected">正常</option>
                  <option value="0">注销</option>
                  </s:if>
                  <s:else>
                  <option value="1">正常</option>
                  <option value="0" selected="selected">注销</option>
                  </s:else>
                </select>
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学习经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<textarea name="workliteuserinfo.user_learnexp"
			 cols="120"><s:property value="workliteuserinfo.user_learnexp"/></textarea>
          </label></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_experience"
			cols="120"><s:property value="workliteuserinfo.user_experience"/></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">技能特长：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_skill"
			cols="120"><s:property value="workliteuserinfo.user_skill"/></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">兴趣爱好：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="workliteuserinfo.user_interest"
			 cols="120"><s:property value="workliteuserinfo.user_interest"/></textarea></td>
          </tr>
        <tr>
          <td colspan="6" bgcolor="#FFFFFF"><label></label>
            <label>
            <div align="center">
              <input type="submit" name="Submit" value="提交">
            </div>
            </label></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
<!--
非正常状态不可编辑
-->
<SCRIPT type="text/javascript">
jQuery(document).ready(function(){
if(jQuery("#user_status").val() !='1'){
	jQuery("#userinfo :enabled").attr("disabled","disabled");
}
});
</SCRIPT>
</body>
</html>
