<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<script type="text/javascript">

   function registerAction(){
      document.location.href="worklite_user_register.jsp";
   }
   
function checkAll(){

if (document.form1.name.value == "")
{
alert("请填写您的用户名！");
document.form1.name.focus();
return (false);
}

var filter=/^\s*[.A-Za-z0-9_-]{5,20}\s*$/;
if (!filter.test(document.form1.name.value)) {
alert("用户名填写不正确,请重新填写！长度不小于5个字符，不超过20个字符，注意不要使用空格。");
document.form1.name.focus();
document.form1.name.select();
return (false);
}

if (document.form1.pwd.value =="")
{
alert("请填写您的密码！");
document.form1.pwd.focus();
document.form1.pwd.select();
return (false);
}

var filter=/^\s*[.A-Za-z0-9_-]{5,15}\s*$/;
if (!filter.test(document.form1.pwd.value)) {
alert("密码填写不正确,请重新填写！可使用的字符为（A-Z a-z 0-9 _ - .)长度不小于5个字符，不超过15个字符，注意不要使用空格。");
document.form1.pwd.focus();
document.form1.pwd.select();
return (false);
}		
		document.form1.submit();
	}
</script>
<title>用户登录</title>
<style type="text/css">
<!--
.STYLE1 {
	color: #FFFFFF;
	font-family: "微软雅黑";
	font-size: 12px;
}
.STYLE4 {font-family: "微软雅黑"; color: #FFFFFF; }
-->
</style>
</head>

	<body topmargin="0" leftmargin="0">
	<center>
		  <table width="100%" cellpadding="0" cellspacing="1" border="0">
            <tr>
              <td height="65"><img src="img/login_01.png" width="250" height="106" /></td>
            </tr>
            <tr>
              <td bgcolor="#999999"><center>
                <table width="100%" border="0">
                  <tr>
                    <td colspan="2"><span class="STYLE1">暂无会议通知</span></td>
                  </tr>
                  <tr>
                    <td width="70%" height="187">&nbsp;</td>
                    <td width="30%">
                      <form method="post" name="form1" id="login" action="login!login">
                        <table vertical-align="middle">
                          <tr>
                            <td><span class="STYLE4"> 用户名: </span></td>
                            <td><input name="workliteuserlogin.user_name" id="name" type="text" />                            </td>
                            <td><font color="white">
                              <c:if
									test="${requestScope.message!=null}"> ${requestScope.message}</c:if>
                            </font> </td>
                          </tr>
                          <tr>
                            <td align="center"><span class="STYLE4"> 密&nbsp;&nbsp;码: </span></td>
                            <td><input name="workliteuserlogin.user_pwd" id="pwd" type="password" />                            </td>
                          </tr>
                          <tr>
                            <td height="33"></td>
                            <td>
							 <input type="submit" id="login" name="login" class="login" value="登录" onClick="checkAll()" />
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="button"  value="注册" onClick="registerAction()">                              </td>
                          </tr>
                        </table>
                      </form>
                  </tr>
                </table>
              </center></td>
            </tr>
            <tr>
              <td><p>&nbsp;</p>
                  <table width="100%" border="0">
                    <tr>
                      <td height="23"><div align="center">copy right 中国建设银行北京开发中心 测试与推广支持处 委托驻场运维小组</div></td>
                    </tr>
                    <tr>
                      <td><div align="center">地址：北京市西城区莲花池东路106号汇融大厦 邮编：100334</div></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
          </table>
	    <p>&nbsp;</p>
			<p>&nbsp;</p>
		</center>
	</body>
</html>
