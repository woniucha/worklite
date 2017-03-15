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
      <td><table width="100%" border="0">
        <tr>
          <td width="8%">按姓名查询：</td>
          <td width="69%"><label>
            <input type="text" name="textfield">
          </label></td>
          <td width="4%"><input type="submit" name="Submit" value="提交"></td>
          <td width="19%"><label>
            <input type="reset" name="Submit2" value="重置">
            </label></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="8%">按公司查询：</td>
          <td width="24%"><label>
            <select name="select">
              <option>请选择公司</option>
              <option>全部公司</option>
              <option>京北方信息技术股份有限公司</option>
              <option>中信网络科技股份有限公司</option>
            </select>
          </label></td>
          <td width="68%"><label></label></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0">
        <tr>
          <td width="8%">按日期查询：</td>
          <td width="5%">开始日期</td>
          <td width="15%"><label>
          <input type="text" name="textfield2">
          </label></td>
          <td width="5%">结束日期</td>
          <td width="15%"><label>
            <input type="text" name="textfield3">
          </label></td>
          <td width="4%"><label></label></td>
          <td width="48%"><label></label></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td><p>&nbsp;</p>
      <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="4%" height="25" bgcolor="#3399CC"><div align="center"><span class="STYLE2">序号</span></div></td>
          <td width="8%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">姓名</span></div></td>
          <td width="7%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">员工编号</span></div></td>
          <td width="15%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">公司</span></div></td>
          <td width="11%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">项目组</span></div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">请假类型</span></div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">请假天数</span></div></td>
          <td width="7%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">开始日期</span></div></td>
          <td width="6%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">结束日期</span></div></td>
          <td width="5%" bgcolor="#3399CC"><div align="center"><span class="STYLE2">状态</span></div></td>
          <td width="25%" bgcolor="#3399CC"><div align="center" class="STYLE2">请假事由</div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center">1</div></td>
          <td bgcolor="#FFFFFF"><div align="center">陈祝军</div></td>
          <td bgcolor="#FFFFFF"><div align="center">201600009881</div></td>
          <td bgcolor="#FFFFFF"><div align="center">中国建设银行北京开发中心</div></td>
          <td bgcolor="#FFFFFF"><div align="center">测试与推广支持处</div></td>
          <td bgcolor="#FFFFFF"><div align="center">年假</div></td>
          <td bgcolor="#FFFFFF"><div align="center">5</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-01-23</div></td>
          <td bgcolor="#FFFFFF"><div align="center">2016-02-12</div></td>
          <td bgcolor="#FFFFFF"><div align="center">已提交</div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center">审批中</div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          <td bgcolor="#FFFFFF"><div align="center">已完成</div></td>
          <td bgcolor="#FFFFFF"><div align="center"></div></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
