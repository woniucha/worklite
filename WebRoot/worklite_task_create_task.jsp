<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建工作任务</title>
<script type="text/javascript" language="javascript" charset="GBK" src="js/calendar.js"></script>
<script type="text/javascript">

function addMore(){ 
    var td = document.getElementById("td"); 
    var br =document.createElement("br");
    var input=document.createElement("input");
    var button=document.createElement("input"); 
    input.type="file";
    input.name="file"; 
	input.size="50";
    button.type="button";
    button.value="删除"; 
    button.onclick = function(){
          td.removeChild(br);
          td.removeChild(input);
          td.removeChild(button);
          } 
    td.appendChild(br);
    td.appendChild(input);
    td.appendChild(button);
}
function checkAll(){
        var name = document.getElementById("worklitetask.task_title").value;
		var pic = document.getElementById("pic");
		var checkTask_title = document.getElementById("checkTask_title");
		var patrn=/^[\u4E00-\u9FA5,a-z,A-Z,0-9,_-]{1,50}$/; 
		if (!patrn.test(name)){
			 checkTask_title.style.color="red";

			 alert('任务标题不超过50个字符，注意不要使用空格。');
			 return false;
		}
		
 
///////////////////////////
var task_begin_date=document.getElementById("worklitetask.task_begin_date");
if(task_begin_date.value==""){
alert("开始时间不能为空");
task_begin_date.focus();
return false;

}

var task_end_date=document.getElementById("worklitetask.task_end_date");
if(task_end_date.value==""){
alert("结束时间不能为空");
task_end_date.focus();
return false;

}

     var td1 = document.getElementById("worklitetask.task_begin_date").value;
     var td2 = document.getElementById("worklitetask.task_end_date").value;
     if(td1>td2){
         alert('结束时间大于开始时间');
          return false;
       }
       
var task_priority=document.getElementById("worklitetask.task_priority");
if(task_priority.value==0){
alert("请选择急迫性");
task_priority.focus();
return false;

}     
       
 var task_handler = document.getElementsByName("task_handler");
 var length=task_handler.length;
 var flag=0;
 for(var i=0;i<length;i++){
	// alert(task_handler[i]);
  if(task_handler[i].checked==true){
       flag=1;
 }
 }
 if(flag==0){
 alert('承办人不能为空');
 return false; 
}
////////////////////////////////////
var name = document.getElementById("worklitetask.task_desc").value;
		var pic = document.getElementById("pic");
		var checkTask_desc = document.getElementById("checkTask_desc");
		var patrn=/^.{1,400}$/; 
		if (!patrn.test(name)){
			 checkTask_desc.style.color="red";
			 alert('任务描述不能为空且不超过250个字符');
			 return false;
		}
			
			
			/////////////////////////////////////////////
			 return true;
		
	}
</script>

<style type="text/css">
<!--
.STYLE3 {font-family: "微软雅黑"; font-weight: bold; color: #666666; }
.STYLE4 {font-family: "微软雅黑"}
-->
</style>
</head>

<body topmargin="0" leftmargin="0">
<form action="task!addTask" method="post" enctype="multipart/form-data" theme="simple">
  <p>&nbsp;</p>
  <table width="80%" border="0" align="center" cellspacing="0" bgcolor="#999999">
    <tr>
      <td width="12%" height="33" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">任务标题：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF"><input name="worklitetask.task_title" id="worklitetask.task_title" type="text" size="120" ><span id="checkTask_title"/>
      </td>
    </tr>
    <tr>
      <td height="31" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">开始时间：</span></div></td>
      <td width="15%" bgcolor="#FFFFFF">
        &nbsp;&nbsp;<input type="text" id="worklitetask.task_begin_date"  name="worklitetask.task_begin_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly" />
      </td>
      <td width="13%" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">结束时间：</span></div></td>
      <td width="14%" bgcolor="#FFFFFF"><input type="text" id="worklitetask.task_end_date"  name="worklitetask.task_end_date" style="border:1px solid #999;" onClick="fPopCalendar(event,this,this)" onFocus="this.select()" readonly="readonly"/></td>
      <td width="11%" bgcolor="#FFFFFF"><div align="right" class="STYLE3">急迫性：</div></td>
      <td width="35%" bgcolor="#FFFFFF"><select name="worklitetask.task_priority" id="worklitetask.task_priority">
        <option value="">请选择</option>
        <option value="一般">一般</option>
        <option value="紧急">紧急</option>
        <option value="特急">特急</option>
      </select></td>
    </tr>
    <tr>
      <td height="76" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">承办人：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF"><table width="100%" border="0">
        <tr>
          <td width="4%"><input name="task_handler" type="checkbox"value="赵蕊"></td>
          <td width="6%"><span class="STYLE4">赵蕊</span></td>
          <td width="4%"><input name="task_handler" type="checkbox" value="刘美娟"></td>
          <td width="6%"><span class="STYLE4">刘美娟</span></td>          
          <td width="4%"><input name="task_handler" type="checkbox" value="肖祥"></td>
          <td width="6%"><span class="STYLE4">肖祥</span></td>
          <td width="4%"><input name="task_handler" type="checkbox" value="徐金霞"></td>
          <td width="6%"><span class="STYLE4">徐金霞</span></td>
          <td width="4%"><input name="task_handler" type="checkbox" value="姚琴"></td>
          <td width="5%"><span class="STYLE4">姚琴</span></td>
          <td width="4%"><input name="task_handler" type="checkbox" value="宋石金"></td>
          <td width="8%"><span class="STYLE4">宋石金</span></td>
          <td width="4%"><input name="task_handler" type="checkbox" value="邓青军"></td>
          <td width="6%"><span class="STYLE4">邓青军</span></td>
          <td width="3%"><input name="task_handler" type="checkbox" value="徐晓东"></td>
          <td width="7%"><span class="STYLE4">徐晓东</span></td>
          <td><input name="task_handler" type="checkbox"value="田冰"></td>
          <td><span class="STYLE4">田冰</span></td>
          <td><input name="task_handler" type="checkbox"value="孙龙"></td>
          <td><span class="STYLE4">孙龙</span></td>
        </tr>
        <tr>
          <td><input name="task_handler" type="checkbox" value="王绎杰"></td>
          <td><span class="STYLE4">王绎杰</span></td>
          <td><input name="task_handler" type="checkbox" value="周正"></td>
          <td><span class="STYLE4">周正</span></td>
          <td><input name="task_handler" type="checkbox" value="何辉"></td>
          <td><span class="STYLE4">何辉</span></td>          
          <td><input name="task_handler" type="checkbox" value="张学然"></td>
          <td><span class="STYLE4">张学然</span></td>
          <td><input name="task_handler" type="checkbox" value="戴辉"></td>
          <td><span class="STYLE4">戴辉</span></td>
          <td><input name="task_handler" type="checkbox" value="王国辉"></td>
          <td><span class="STYLE4">王国辉</span></td>
          <td><input name="task_handler" type="checkbox" value="孟令聪"></td>
          <td><span class="STYLE4">孟令聪</span></td>
          <td><input name="task_handler" type="checkbox" value="孙家红"></td>
          <td><span class="STYLE4">孙家红</span></td>
          <td><input name="task_handler" type="checkbox" value="吕小光"></td>
          <td><span class="STYLE4">吕小光</span></td>
          <td><input name="task_handler" type="checkbox"value="马丽忠"></td>
          <td><span class="STYLE4">马丽忠</span></td>
        </tr>
		        <tr>          
          <td><input name="task_handler" type="checkbox"value="程亚利"></td>
          <td><span class="STYLE4">程亚利</span></td>
          <td><input name="task_handler" type="checkbox"value="王腾猛"></td>
          <td><span class="STYLE4">王腾猛</span></td>
          <td><input name="task_handler" type="checkbox" value="林宏霞"></td>
          <td><span class="STYLE4">林宏霞</span></td>
          <td><input name="task_handler" type="checkbox" value="王海滨"></td>
          <td><span class="STYLE4">王海滨</span></td>
          <td><input name="task_handler" type="checkbox" value="宁晨"></td>
          <td><span class="STYLE4">宁晨</span></td>
          <td><input name="task_handler" type="checkbox" value="陈祝军"></td>
          <td><span class="STYLE4">陈祝军</span></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="63" bgcolor="#FFFFFF"><div align="right"><span class="STYLE3">任务描述：</span></div></td>
      <td colspan="5" bgcolor="#FFFFFF">
        <textarea id="worklitetask.task_desc" name="worklitetask.task_desc" cols="100" ></textarea>
		<span id="checkTask_desc"/>
      </td>
    </tr>
    <tr>
      <td height="50" valign="top" bgcolor="#FFFFFF" class="STYLE3"><div align="right">上传附件：</div></td>
      <td colspan="5" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0">
        <tr>
          <td width="49%" height="31" valign="top" id="td"><input name="file" type="file" size="50" label="file" /></td>
          <td width="51%" valign="top"><input type="button" value="添加更多附件" onClick="addMore()"></td>
        </tr>
        
      </table></td>
    </tr>
    
    <tr>
      <td height="46" colspan="6" bgcolor="#FFFFFF">
        <div align="center">
          <input type="submit" name="Submit" onClick="return checkAll();" value="发布任务">
      &nbsp;        </div></td>
    </tr>
  </table>
</form>
</body>
</html>
