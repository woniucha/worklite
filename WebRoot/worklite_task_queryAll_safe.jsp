<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>查询所有检查任务</title>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="80%" border="0" align="center">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="10%">按编号查询：</td>
          <td width="67%"><label>
            <input type="text" name="textfield">
          </label></td>
          <td width="5%"><input type="submit" name="Submit" value="提交"></td>
          <td width="18%"><label>
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="10%">按状态：</td>
          <td width="21%"><label>
            <select name="select">
              <option>请选择状态</option>
              <option>处理中</option>
              <option>检核中</option>
              <option>已完成</option>
                        </select>
          </label></td>
          <td width="10%">按创建人：</td>
          <td width="59%"><label>
            <input type="text" name="textfield4">
          </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="10%">按日期查询：</td>
          <td width="13%">创建日期</td>
          <td width="19%"><label>
            <input type="text" name="textfield2">
          </label></td>
          <td width="12%">完成日期</td>
          <td width="23%"><label>
            <input type="text" name="textfield3">
          </label></td>
          <td width="2%"><label></label></td>
          <td width="21%"><label></label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="27">&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0" bgcolor="#CCCCCC" cellpadding="0" cellspacing="1">
        
        <tr>
          <td width="9%" height="25" bgcolor="#3399CC"><div align="center" class="STYLE1">任务编号</div></td>
          <td width="46%" bgcolor="#3399CC"><div align="center" class="STYLE1">任务标题</div></td>
          <td width="9%" bgcolor="#3399CC"><div align="center" class="STYLE1">状态</div></td>
          <td width="8%" bgcolor="#3399CC"><div align="center" class="STYLE1">创建日期</div></td>
          <td width="9%" bgcolor="#3399CC"><div align="center" class="STYLE1">截止日期</div></td>
          <td width="9%" bgcolor="#3399CC"><div align="center" class="STYLE1">完成效率</div></td>
          <td width="10%" bgcolor="#3399CC"><div align="center" class="STYLE1">创建人</div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center"><a href="worklite_task_queryDetail_safe.jsp" target="_self">T0000001</a></div></td>
          <td bgcolor="#FFFFFF">关于部署2016年安全大检查的通知</td>
          <td bgcolor="#FFFFFF"><div align="center">处理中</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-31</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-01-02</div></td>
          <td bgcolor="#FFFFFF"><div align="center">正在处理</div></td>
          <td bgcolor="#FFFFFF"><div align="center">王毅</div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">T0000002</div></td>
          <td bgcolor="#FFFFFF">北京开发中心关于部署2016年安全大检查的通知</td>
          <td bgcolor="#FFFFFF"><div align="center">已完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-02</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-31</div></td>
          <td bgcolor="#FFFFFF"><div align="center">按时完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">陈祝军</div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">T0000003</div></td>
          <td bgcolor="#FFFFFF">信息技术管理部关于部署2016年安全大检查的通知</td>
          <td bgcolor="#FFFFFF"><div align="center">已完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-02</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-31</div></td>
          <td bgcolor="#FFFFFF"><div align="center">提起完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">邓青军</div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">T0022003</div></td>
          <td bgcolor="#FFFFFF">关于部署2016年安全大检查的通知</td>
          <td bgcolor="#FFFFFF"><div align="center">已完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-02</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2015-12-31</div></td>
          <td bgcolor="#FFFFFF"><div align="center">超时完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center">周正</div></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">·</td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          <td bgcolor="#FFFFFF">&nbsp;</td>
          </tr>

        <tr>
          <td colspan="7" bgcolor="#FFFFFF"><label>
            <div align="center">上一页 下一页 最后页          </div>
            </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
