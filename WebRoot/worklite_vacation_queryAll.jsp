<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/CSS.CSS" type="text/css">
<title>璇峰亣璁板綍鏌ヨ</title>
<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #FFFFFF}
.STYLE6 {color: #FFFFFF; font-family: "寰蒋闆呴粦"; }
.STYLE7 {font-family: "寰蒋闆呴粦"}
-->
</style>
</head>

<body>
<table width="90%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="9%" height="25" bgcolor="#999999"><div align="center" class="STYLE2 STYLE6 STYLE7">
      <div align="center">VACATION_ID
    </div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE7"><span class="STYLE2">COMMIT_DATE</span></div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE7"><span class="STYLE2">PRIORITY</span></div></td>
    <td width="9%" bgcolor="#999999"><div align="center" class="STYLE7"><span class="STYLE2">STATUS</span></div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">VACATION_PERSON
    </div></td>
    <td width="17%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">CORPORATION
    </div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE7"><span class="STYLE2">VACATION_DAYS</span></div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE7"><span class="STYLE2">BEGIN_DATE</span></div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">END_DATE
    </div></td>
    <td width="7%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">COR_CHECK
    </div></td>
    <td width="8%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">BANK_CHECK
    </div></td>
    <td width="6%" bgcolor="#999999"><div align="center" class="STYLE6">
      <div align="center">ACTION
    </div></td>
  </tr>

     <s:iterator value="pagemodebyindication.list" id="worklitevacation">
	
  <tr>
    <td height="25" bgcolor="#FFFFFF"><div align="center" class="STYLE7">
     <s:property value="#worklitevacation.vacation_id"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_commitdate"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_priority"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_status"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_person"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_corporation"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_day_num"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_startdate"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_enddate"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_corporation_verify"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7">
      <s:property value="#worklitevacation.vacation_bank_verify"/>
    </div></td>
    <td bgcolor="#FFFFFF"><div align="center" class="STYLE7"><span class="STYLE1"><a href="vacation!queryVacationDetail?vacation_id=<s:property value="#worklitevacation.vacation_id"/>">详情</a></span></div></td>
  </tr>
     </s:iterator>
	   <tr>
    <td height="25" colspan="12" bgcolor="#FFFFFF"><div align="right">第<s:property value="pagemodebyindication.pageNo"/>页<s:property value="pagemodebyindication.totalPages"/>共<s:property value="pagemodebyindication.totalRecords"/>页


	<a href="vacation!findByPage?pageNo=<s:property value="pagemodebyindication.topPageNo"/>&pageSize=10&worklitevacation.vacation_person=<s:property value="pagemodebyindication.worklitevacation.vacation_person"/>&worklitevacation.vacation_status=<s:property value="pagemodebyindication.worklitevacation.vacation_status"/>&worklitevacation.vacation_id=<s:property value="pagemodebyindication.worklitevacation.vacation_id"/>&worklitevacation.vacation_startdate=<s:property value="pagemodebyindication.worklitevacation.vacation_startdate"/>&worklitevacation.vacation_enddate=<s:property value="pagemodebyindication.worklitevacation.vacation_enddate"/>&worklitevacation.vacation_corporation=<s:property value="pagemodebyindication.worklitevacation.vacation_corporation"/>">[首页]</a>   
	<a href="vacation!findByPage?pageNo=<s:property value="pagemodebyindication.previousPageNo"/>&pageSize=10&worklitevacation.vacation_person=<s:property value="pagemodebyindication.worklitevacation.vacation_person"/>&worklitevacation.vacation_status=<s:property value="pagemodebyindication.worklitevacation.vacation_status"/>&worklitevacation.vacation_id=<s:property value="pagemodebyindication.worklitevacation.vacation_id"/>&worklitevacation.vacation_startdate=<s:property value="pagemodebyindication.worklitevacation.vacation_startdate"/>&worklitevacation.vacation_enddate=<s:property value="pagemodebyindication.worklitevacation.vacation_enddate"/>&worklitevacation.vacation_corporation=<s:property value="pagemodebyindication.worklitevacation.vacation_corporation"/>">[前页]</a>
   
 	<a href="vacation!findByPage?pageNo=<s:property value="pagemodebyindication.nextPageNo"/>&pageSize=10&worklitevacation.vacation_person=<s:property value="pagemodebyindication.worklitevacation.vacation_person"/>&worklitevacation.vacation_status=<s:property value="pagemodebyindication.worklitevacation.vacation_status"/>&worklitevacation.vacation_id=<s:property value="pagemodebyindication.worklitevacation.vacation_id"/>&worklitevacation.vacation_startdate=<s:property value="pagemodebyindication.worklitevacation.vacation_startdate"/>&worklitevacation.vacation_enddate=<s:property value="pagemodebyindication.worklitevacation.vacation_enddate"/>&worklitevacation.vacation_corporation=<s:property value="pagemodebyindication.worklitevacation.vacation_corporation"/>">[后页]</a>
	<a href="vacation!findByPage?pageNo=<s:property value="pagemodebyindication.bottomPageNo"/>&pageSize=10&worklitevacation.vacation_person=<s:property value="pagemodebyindication.worklitevacation.vacation_person"/>&worklitevacation.vacation_status=<s:property value="pagemodebyindication.worklitevacation.vacation_status"/>&worklitevacation.vacation_id=<s:property value="pagemodebyindication.worklitevacation.vacation_id"/>&worklitevacation.vacation_startdate=<s:property value="pagemodebyindication.worklitevacation.vacation_startdate"/>&worklitevacation.vacation_enddate=<s:property value="pagemodebyindication.worklitevacation.vacation_enddate"/>&worklitevacation.vacation_corporation=<s:property value="pagemodebyindication.worklitevacation.vacation_corporation"/>">[末页]</a>
	</div></td>
    </tr>
</table>

</body>
</html>
