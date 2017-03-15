<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>任务处理上传页面</title>
		<script type="text/javascript">
	function addMore() {
		var td = document.getElementById("td");

		var br = document.createElement("br");
		var input = document.createElement("input");
		var button = document.createElement("input");

		input.type = "file";
		input.name = "file";

		button.type = "button";
		button.value = "删除";

		button.onclick = function() {
			td.removeChild(br);
			td.removeChild(input);
			td.removeChild(button);
		}

		td.appendChild(br);
		td.appendChild(input);
		td.appendChild(button);
	}
</script>
	</head>
	<body>
		<s:form action="uploadhandle!toupdate" enctype="multipart/form-data" theme="simple">
			<table align="center" width="50%" border="1">
				<tr>
				<td>任务编号</td>
				<td><label>
      			  <input disabled="disabled" type="text" name="task_id" value='<s:property value="worklitetask.task_id"/>'/>
      			</label></td>
				</tr>
				
				<tr>
					<td>
						上传
					</td>
					<td id="td">
						<s:file name="file" label="file"></s:file>
						<input type="button" value="添加文件" onclick=addMore();>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value=" 确认 "></s:submit>
					</td>
					<td>
						<s:reset value=" 重置 "></s:reset>
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
