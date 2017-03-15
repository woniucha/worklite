<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建会议通知</title>
</head>

<body topmargin="0" leftmargin="0">
<form action="" method="post">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="90%" border="0" align="center" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td width="13%" height="23" bgcolor="#FFFFFF"><strong>报告人：</strong></td>
          <td width="14%" bgcolor="#FFFFFF"><label>
            <input type="text" name="textfield">
          </label></td>
          <td width="13%" bgcolor="#FFFFFF"><strong>报告人电话：</strong></td>
          <td width="15%" bgcolor="#FFFFFF"><input type="text" name="textfield2"></td>
          <td width="13%" bgcolor="#FFFFFF"><strong>发生单位：</strong></td>
          <td width="32%" bgcolor="#FFFFFF"><input type="text" name="textfield3"></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>联系人：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield4"></td>
          <td bgcolor="#FFFFFF"><strong>联系电话：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield5"></td>
          <td bgcolor="#FFFFFF"><strong>事件解决状态</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <select name="select2">
              <option>请选择</option>
              <option>待解决</option>
              <option>已解决</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>接受时间：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield6"></td>
          <td bgcolor="#FFFFFF"><strong>处理完成时间：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield7"></td>
          <td bgcolor="#FFFFFF"><strong>重复发生事件单号：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield8"></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>应用系统：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield9"></td>
          <td bgcolor="#FFFFFF"><strong>事件类别：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield10"></td>
          <td bgcolor="#FFFFFF"><strong>事件类别说明：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <select name="select3">
              <option>请选择</option>
              <option>咨询服务</option>
              <option>产品问题</option>
              <option>第三方问题</option>
              <option>服务请求</option>
              <option>巡检</option>
              <option>业务部门问题</option>
              <option>应用问题</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>接受方式：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <select name="select">
              <option>请选择方式</option>
              <option>DCM</option>
              <option>OA便函</option>
              <option>电话</option>
              <option>邮件</option>
              <option>监控告警</option>
              <option>巡检</option>
              <option>申请单</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><strong>运维团队处理人：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield11"></td>
          <td bgcolor="#FFFFFF"><strong>开发处室处理人：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield12"></td>
        </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>适用环境：</strong></td>
          <td bgcolor="#FFFFFF"><label>
            <select name="select4">
              <option>请选择</option>
              <option>测试环境</option>
              <option>生产环境</option>
              <option>数据迁移环境</option>
              <option>对账环境</option>
              <option>生产和测试环境</option>
            </select>
          </label></td>
          <td bgcolor="#FFFFFF"><strong>函编号：</strong></td>
          <td colspan="3" bgcolor="#FFFFFF"><input type="text" name="textfield162"></td>
          </tr>
        <tr>
          <td height="25" bgcolor="#FFFFFF"><strong>生产问题需求编号：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield13"></td>
          <td bgcolor="#FFFFFF"><strong>知识库编号：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield14"></td>
          <td bgcolor="#FFFFFF"><strong>测试推广编号：</strong></td>
          <td bgcolor="#FFFFFF"><input type="text" name="textfield15"></td>
        </tr>
        
        <tr>
          <td bgcolor="#FFFFFF"><strong>事件描述</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><label>
            <textarea name="textarea" cols="150"></textarea>
          </label></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><strong>处理过程：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="textarea2" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><strong>解决方案：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="textarea3" cols="150"></textarea></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><strong>备注：</strong></td>
          <td colspan="5" bgcolor="#FFFFFF"><textarea name="textarea4" cols="150"></textarea></td>
        </tr>
        <tr>
          <td height="35" colspan="6" bgcolor="#FFFFFF"><label>
              <div align="center">
                <input type="submit" name="Submit" value="保存">
                <input type="submit" name="Submit2" value="保存并导入知识库">
                <input type="submit" name="Submit3" value="保存并转到问题">
                <input type="submit" name="Submit32" value="保存并转到运维分析会">
              </div>
            </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
