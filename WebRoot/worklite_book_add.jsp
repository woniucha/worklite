<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" pageEncoding="UTF-8" %>
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE4 {font-family: "微软雅黑"; font-size: 18px; }
.STYLE12 {font-size: 24px}
.STYLE13 {
	font-family: "微软雅黑";
	font-size: 14px;
}
.STYLE16 {font-family: "微软雅黑"; font-size: 12px; color: #FFFFFF; }
.STYLE18 {color: #000000}
.STYLE19 {font-family: "微软雅黑"; font-size: 12px; color: #000000; }
.STYLE20 {font-size: 12px; font-family: "微软雅黑";}
-->
</style>
<script type="text/javascript">
function addAction(){
if (document.form1.book_name.value =="")
{
alert("请填写图书名称！");
document.form1.book_name.focus();
return (false);
}

var filter=/^.{0,50}$/;
if (!filter.test(document.form1.book_name.value)) {
alert("图书名称填写不正确,请重新填写！可使用的字符不超过50个字。");
document.form1.book_name.focus();
return (false);
}

if (document.form1.book_writer.value =="")
{
alert("请填写图书作者！");
document.form1.book_writer.focus();
return (false);
}

var filter=/^.{0,50}$/;
if (!filter.test(document.form1.book_writer.value)) {
alert("图书作者填写不正确,请重新填写！可使用的字符不超过50个字。");
document.form1.book_writer.focus();
document.form1.book_writer.select();
return (false);
}

if (document.form1.book_press.value =="")
{
alert("请填写图书出版社！");
document.form1.book_press.focus();
document.form1.book_press.select();
return (false);
}

var filter=/^.{0,50}$/;
if (!filter.test(document.form1.book_press.value)) {
alert("图书出版社填写不正确,请重新填写！可使用的字符不超过50个字。");
document.form1.book_press.focus();
document.form1.book_press.select();
return (false);
}

if (document.form1.book_price.value =="")
{
alert("请填写图书价格！");
document.form1.book_price.focus();
document.form1.book_price.select();
return (false);
}

var filter=/^[0-9\.]{0,9}$/;
if (!filter.test(document.form1.book_price.value)) {
alert("图书价格填写不正确,请重新填写！");
document.form1.book_price.focus();
document.form1.book_price.select();
return (false);
}

if (document.form1.book_disk.value =="")
{
alert("请选择是否有光盘！");
document.form1.book_disk.focus();
return (false);
}

document.form1.action="book!addBook";
document.form1.submit();
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>图书入库</title>
</head>

<body>
<form id="form1" name="form1" method="post">
  <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0"> 
    <tr>
      <td height="53" colspan="4"><div align="center" class="STYLE1 STYLE12 STYLE13">增加图书</div></td>
    </tr>
    <tr>
      <td width="222" height="30"><div align="right" class="STYLE16 STYLE18">
        <div align="right">图书名称：</div>
      </div></td>
      <td colspan="3">
        <input name="worklitebook.book_name" id="book_name" type="text" size="83" /></td>
    </tr>
    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">作者：</div>
      </div></td>
      <td width="169"><label>
        <input type="text" name="worklitebook.book_writer" id="book_writer" />
      </label></td>
      <td width="120" class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">出版社：</div>
      </div></td>
      <td width="265"><label>
        <input type="text" name="worklitebook.book_press" id="book_press"/>
      </label></td>
    </tr>

    <tr>
      <td height="30"><div align="right" class="STYLE19">
        <div align="right">价格：</div>
      </div></td>
      <td><label>
        <input type="text" name="worklitebook.book_price" id="book_price" />
      </label></td>
      <td class="STYLE4"><div align="right" class="STYLE19">
        <div align="right">光盘：</div>
      </div></td>
      <td><label>
      <select name="worklitebook.book_disk" id="book_disk">
        <option value="">请选择</option>
        <option value="有光盘">有光盘</option>
        <option value="无光盘">无光盘</option>
      </select>
      </label></td>
    </tr>


    <tr>
      <td height="50" colspan="4">
          <div align="center">
            <input type="button" name="Submit" value="提交" onClick="addAction()"/>
            &nbsp;&nbsp;<input type="reset" name="Submit2" value="重置" />     
          </div></td>
    </tr>
  </table>
</form>
</body>
</html>
