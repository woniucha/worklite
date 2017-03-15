<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>用户注册</title>
<script LANGUAGE="javascript">
	
function checkName(){
		var name = document.getElementById("name");
		var checkName = document.getElementById("checkName");
		var patrn=/^[a-zA-Z_]{1}\w{4,20}$/; 
		if (!patrn.exec(name.value)){
			 checkName.style.color="#FFFF00";
			 checkName.innerHTML="用户名填写不正确,请重新填写！长度不小于5个字符，不超过20个字符，注意不要使用空格。";
			 return false;
		}else{	
			 checkName.style.color="white";
			 checkName.innerHTML="用户名填写正确";
			 return true;
		}
	}
	
function checkPassword(){
		var password1 = document.getElementById("password1");
		var checkPwd = document.getElementById("checkPwd");
		var patrn=/^[a-z,A-Z,0-9]{6,15}$/;
		if (!patrn.exec(password1.value)){
			checkPwd.style.color="#FFFF00";
			checkPwd.innerHTML="密码格式不正确，请输入6-16位密码！";
			return false;
		}else{
			checkPwd.style.color="white";
			checkPwd.innerHTML="密码格式正确";
			return true;
		}
	}
	
function checkPwd(){
		var password1 = document.getElementById("password1");
		var password2 = document.getElementById("password2");
		var pwdRemind = document.getElementById("pwdRemind");
		if(password1.value!=password2.value){
			pwdRemind.style.color="#FFFF00";
			pwdRemind.innerHTML="两次密码不一致";
			return false;
		}else{
			pwdRemind.style.color="white";
			pwdRemind.innerHTML="密码通过";
			return true;
		}
	}

	
function clearRN(){
		var checkName = document.getElementById("checkName");
		checkName.style.color="white";
		checkName.innerHTML="请输入5-20位用户名";
	}
	
function clearPwd(){
		var checkPwd = document.getElementById("checkPwd");
		checkPwd.style.color="white";
		checkPwd.innerHTML="密码必须在 6-15 位";
	}
	
function clearPwdRemind(){
		var pwdRemind = document.getElementById("pwdRemind");
		pwdRemind.style.color="white";
		pwdRemind.innerHTML="确认密码必须在 6-15 位，且和用户密码一致";
	}
	
function checkAll(){

if (document.form1.name.value == "")
{
alert("请填写您的用户名！");
document.register_form.name.focus();
return (false);
}

var filter=/^\s*[.A-Za-z0-9_-]{5,20}\s*$/;
if (!filter.test(document.form1.name.value)) {
alert("用户名填写不正确,请重新填写！长度不小于5个字符，不超过20个字符，注意不要使用空格。");
document.form1.name.focus();
document.form1.name.select();
return (false);
}

if (document.form1.password1.value =="")
{
alert("请填写您的新密码！");
document.form1.password1.focus();
document.form1.password1.select();
return (false);
}

if(document.form1.password2.value==""){
alert("请输入您的确认新密码！");
document.form1.password2.focus();
document.form1.password2.select();
return (false);
}

var filter=/^\s*[.A-Za-z0-9_-]{5,15}\s*$/;
if (!filter.test(document.form1.password1.value)) {
alert("密码填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 _ - .)长度不小于5个字符，不超过15个字符，注意不要使用空格。");
document.form1.password1.focus();
document.form1.password1.select();
return (false);
}

if (document.form1.password1.value!=document.form1.password2.value ){
alert("两次填写的密码不一致，请重新填写！");
document.form1.password1.focus();
document.form1.password1.select();
return (false);
}		
		document.form1.submit();
	}
</script>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>
<body topmargin="0" leftmargin="0">
<table width="100%" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td bgcolor="#999999">
	  <center>
    <form id=""register_form" name="form1" method="post" action="user!update_pwd">
      <table width="80%" border="0" align="center">
        <tr>
          <td height="51" colspan="3"><div align="center"><font color="#FFFFFF" size="4" face="微软雅黑">修改用户密码</font></div></td>
        </tr>
        <tr>
          <td width="48%" height="30"><div align="right"><font color="#FFFFFF" size="2" face="微软雅黑">系统登录名：</font></div></td>
          <td width="14%"><input name="workliteuserlogin.user_name" id="name" type="text" onBlur="checkName()" onFocus="clearRN()"/></td>
          <td width="38%" id="checkName" class="remind"><font color="#ffff00">
            <c:if test="${requestScope.message!=null}">${requestScope.message}</c:if>
          </font></td>
        </tr>
        <tr>
          <td width="48%" height="30"><div align="right"><font color="#FFFFFF" size="2" face="微软雅黑">原密码：</font></div></td>
          <td width="14%"><input name="workliteuserlogin.user_pwd" id="chinaname" type="password" "/></td>
          <td width="38%" id="checkName" class="remind"><font color="#ffff00">
            <c:if test="${requestScope.message!=null}">${requestScope.message}</c:if>
          </font></td>
        </tr>
        
        <tr>
          <td height="30"><div align="right"><font color="#FFFFFF" size="2" face="微软雅黑">新密码：</font></div></td>
          <td><input name="user_newpwd" id="password1" type="password" onFocus="clearPwd()" onBlur="checkPassword()" /></td>
          <td class="remind STYLE1" id="checkPwd">密码请设为6-15位字母或数字</td>
        </tr>
        <tr>
          <td height="30"><div align="right"><font color="#FFFFFF" size="2" face="微软雅黑">再次输入新密码：</font></div></td>
          <td><label>
            <input id="password2" type="password" name="user_pw2" onBlur="checkPwd()" onFocus="clearPwdRemind()"/>
          </label></td>
          <td id="pwdRemind" class="remind" >&nbsp;</td>
        </tr>
        <tr>
          <td height="33" colspan="3"><div align="center">
            <input type="button" id="register" name="register" class="register" value="确认修改" onClick="checkAll()" />
           &nbsp;&nbsp;<input type="reset" name="Submit" value="重置"	 /></div></td>
        </tr>
      </table>
    </form>
    </center>
	</td>
  </tr>
</table>

  </body>
</html>
