<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询图书</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-family: "微软雅黑"}
.STYLE4 {font-family: "微软雅黑"; color: #333333; }
-->
</style>
</head>

<body topmargin="0" leftmargin="0">

  <table width="100%" border="0" align="center">
    <tr height="2">
      <td></td>
    </tr>
    <tr>
      <td>
	  <form action="book!findByCondition" method="post" target="self_bottom">
	  <table width="100%" border="0">
        <tr>
          <td width="6%"><div align="left"><span class="STYLE4">图书编号：</span></div></td>
          <td width="13%"><label>
            <input type="text" name="worklitebook.book_id">
          </label></td>
          <td width="6%"><div align="left"><span class="STYLE4">图书状态：</span></div></td>
          <td width="36%"><label>
            <select name="worklitebook.book_status">
			  <option value="">请选择</option>
			  <option value="可借阅">可借阅</option>
			  <option value="已借阅">已借阅</option>
			  <option value="已注销">已注销</option>
            </select>
          </label></td>
          <td width="7%"><label>
            <input type="submit" name="Submit" value="开始查询">
			    <input type="hidden" name="pageNo" value="1" />
				<input type="hidden" name="pageSize" value="10" />
          </label></td>
          <td width="32%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
        <tr>
          <td><div align="left"><span class="STYLE4">图书名称：</span></div></td>
          <td><label>
            <input type="text" name="worklitebook.book_name">
          </label></td>
          <td><div align="left"><span class="STYLE4">图书作者：</span></div></td>
          <td><label>
            <input type="text" name="worklitebook.book_writer">
          </label></td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>	  
	  </form>	  </td>
    </tr>
    
    <tr>
      <td><iframe name="self_bottom" width="100%" height="290" frameborder="0"></iframe></td>
    </tr>
  </table>

</body>
</html>
