<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>q请假申请</title>
<style type="text/css">
<!--
.STYLE2 {color: #FFFFFF}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="9%">编号查询：</td>
          <td width="12%"><label>
            <input type="text" name="textfield">
          </label></td>
          <td width="9%">按标题模糊查询：</td>
          <td width="47%"><input type="text" name="textfield6"></td>
          <td width="4%"><input type="submit" name="Submit" value="查询"></td>
          <td width="19%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="9%">创建人查询：</td>
          <td width="12%"><label>
            <input type="text" name="textfield4">
          </label></td>
          <td width="9%"><label>参加人查询：</label></td>
          <td width="70%"><label>
            <input type="text" name="textfield5">
          </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="9%">开始日期：</td>
          <td width="12%"><label>
          <input type="text" name="textfield2">
          </label></td>
          <td width="9%">结束日期：</td>
          <td width="15%"><label>
            <input type="text" name="textfield3">
          </label></td>
          <td width="5%"><label></label></td>
          <td width="50%"><label></label></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td><p>&nbsp;</p>
      <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="9%" height="25" bgcolor="#3399CC"><div align="center" class="STYLE2">会议编号</div></td>
          <td width="29%" bgcolor="#3399CC"><div align="center" class="STYLE2">会议标题</div></td>
          <td width="20%" bgcolor="#3399CC"><div align="center" class="STYLE2">会议时间</div></td>
          <td width="13%" bgcolor="#3399CC"><div align="center" class="STYLE2">参加人</div></td>
          <td width="7%" bgcolor="#3399CC"><div align="center" class="STYLE2">发起时间</div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">发起人</span></div></td>
          <td width="5%" bgcolor="#3399CC"><div align="center" class="STYLE2">状态</div></td>
          <td width="5%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">操作</span></div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center" class="STYLE2">操作</div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center"><a href="worklite_meeting_queryDetail.jsp" target="_self">MWTYW01160120</a></div></td>
          <td bgcolor="#FFFFFF"><div align="center">关于组织2016年委托运维系统工作周例会的通知</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-01-23 15:30 至 2016-01-23 17:00 </div></td>
          <td bgcolor="#FFFFFF"><div align="center">全体</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-02-12</div></td>
          <td bgcolor="#FFFFFF"><div align="center">刘莎莎</div></td>
          <td bgcolor="#FFFFFF"><div align="center">未开始</div></td>
          <td bgcolor="#FFFFFF"><div align="center"><a href="worklite_meeting_maintain.jsp" target="_self">维护</a></div></td>
          <td bgcolor="#FFFFFF"><div align="center"><a href="worklite_meeting_memorandum.jsp" target="_self">添加备忘</a></div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">MWTYW01160120</div></td>
          <td bgcolor="#FFFFFF"><div align="center">关于组织2016年委托运维系统工作周例会的通知</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-01-23 15:30 至 2016-01-23 17:00 </div></td>
          <td bgcolor="#FFFFFF"><div align="center">刘莎莎、徐晓东、姚琴......</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-02-12</div></td>
          <td bgcolor="#FFFFFF"><div align="center">刘莎莎</div></td>
          <td bgcolor="#FFFFFF"><div align="center">已召开</div></td>
          <td bgcolor="#FFFFFF"><div align="center">维护</div></td>
          <td bgcolor="#FFFFFF"><div align="center">添加备忘</div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">MWTYW01160120</div></td>
          <td bgcolor="#FFFFFF"><div align="center">关于急急急组织2016年委托运维系统工作周例会的通知</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-01-23 15:30 至 2016-01-23 17:00 </div></td>
          <td bgcolor="#FFFFFF"><div align="center">全体</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-02-12</div></td>
          <td bgcolor="#FFFFFF"><div align="center">刘莎莎</div></td>
          <td bgcolor="#FFFFFF"><div align="center">已取消</div></td>
          <td bgcolor="#FFFFFF"><div align="center">维护</div></td>
          <td bgcolor="#FFFFFF"><div align="center">添加备忘</div></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
