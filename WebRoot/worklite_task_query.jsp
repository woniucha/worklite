<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建会议通知</title>
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
	  <form action="task!findByCondition" method="post" target="self_bottom">
	  <table width="100%" border="0">
        <tr>
          <td width="10%"><div align="left"><span class="STYLE4">任务编号：</span></div></td>
          <td width="17%"><label>
            <input type="text" name="worklitetask.task_id">
          </label></td>
          <td width="10%"><div align="left"><span class="STYLE4">任务状态：</span></div></td>
          <td width="25%"><label>
            <select name="worklitetask.task_status">
			  <option value="">请选择</option>
              <option value="已关闭">已关闭</option>
              <option value="已完成">已完成</option>
              <option value="处理中">处理中</option>
            </select>
          </label></td>
          <td width="6%"><label>
            <input type="submit" name="Submit" value="开始查询">
			    <input type="hidden" name="pageNo" value="1" />
				<input type="hidden" name="pageSize" value="10" />
          </label></td>
          <td width="32%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
        <tr>
          <td><div align="left"><span class="STYLE4">任务标题：</span></div></td>
          <td><label>
            <input type="text" name="worklitetask.task_title">
          </label></td>
          <td><div align="left"><span class="STYLE4">任务发起人：</span></div></td>
          <td><label>
            <input type="text" name="worklitetask.task_issue_person">
          </label></td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td><div align="left"><span class="STYLE4">发起开始时间：</span></div></td>
          <td><label>
			<input type="text" id="issue_begin_date"  name="issue_begin_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
          </label></td>
          <td><div align="left"><span class="STYLE4">发起截止时间：</span></div></td>
          <td><label>
           <input type="text" id="issue_end_date"  name="issue_end_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/>
          </label></td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>	  
	  </form>	  </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><iframe name="self_bottom" width="100%" height="290" frameborder="0"></iframe></td>
    </tr>
  </table>

</body>
</html>
