<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>注销用户</title>
<style type="text/css">
<!--
.STYLE1 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form name="userinfo" method="post" action="user!annulUserInfo">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="80%" border="0" align="center" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        <tr>
          <td width="10%" height="30" bgcolor="#FFFFFF"><span class="STYLE1">用户姓名：</span></td>
          <td width="21%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp<input type="text"
								value="<s:property value="workliteuserinfo.user_name"/>"
								name="workliteuserinfo.user_name" />
          </label></td>
          <td width="18%" bgcolor="#FFFFFF"><span class="STYLE1">用户UASS账户：</span></td>
          <td width="17%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield3">
          </label></td>
          <td width="11%" bgcolor="#FFFFFF"><span class="STYLE1">性别：</span></td>
          <td width="23%" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="select2">
              <option>男</option>
              <option>女</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">出生年月：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield2">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">籍贯：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield4">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">民族：</span></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">政治面貌：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="select3">
              <option>群众</option>
              <option>中共党员</option>
              <option>其他民主党派</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学历：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="select4">
              <option>大专</option>
              <option>本科</option>
              <option>研究生</option>
              <option>博士</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">专业：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield5">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">毕业院校：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield6">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">毕业时间：</span></td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作年限：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="select5">
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
            &nbsp;&nbsp;<input type="text" name="textfield7">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">手机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield8">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">座机：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield9">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">住址：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield10">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮编：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield11">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">方位：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<select name="select">
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
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield12">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">所属部门：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield13">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">联系电话:</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield14">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">职务：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield22">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职务起始时间：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield29">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">职称：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield21">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目经理：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield15">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield16">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield17">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目总监：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield18">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield19">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield20">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">项目销售：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield25">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">电话：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield24">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">邮箱：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield23">
          </label></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#FFFFFF"><span class="STYLE1">身份证号码：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield26">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">参加项目：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield27">
          </label></td>
          <td bgcolor="#FFFFFF"><span class="STYLE1">用户状态：</span></td>
          <td bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<input type="text" name="textfield28">
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">学习经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            &nbsp;&nbsp;<textarea name="textarea" cols="120"></textarea>
          </label></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">工作经历：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="textarea2" cols="120"></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">技能特长：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="textarea3" cols="120"></textarea></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="STYLE1">兴趣爱好：</span></td>
          <td colspan="5" bgcolor="#FFFFFF">&nbsp;&nbsp;<textarea name="textarea4" cols="120"></textarea></td>
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
</body>
</html>
