<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/CSS.CSS" rel="stylesheet" type="text/css" />
<title>创建一般通知任务</title>
<link href="js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/uploadify/swfobject.js"></script>
<script type="text/javascript" src="js/uploadify/jquery.uploadify.v2.1.0.js"></script>
<script type="text/javascript">
   $(document).ready(function() { 
            $("#fileupload").uploadify({ 
                /*注意前面需要书写path的代码*/ 
                'uploader'       : '<%=basePath%>/js/uploadify/uploadify.swf', 
                'script'         : '<%=basePath%>/uploadUtil.action', 
                'cancelImg'      : '<%=basePath%>/js/uploadify/uploadify/cancel.png', 
                'queueID'        : 'fileQueue', //和存放队列的DIV的id一致 
                'fileDataName'   : 'fileupload', //和以下input的name属性一致 
                'auto'           : false, //是否自动开始 
                'multi'          : true, //是否支持多文件上传 
                'buttonText'     : 'Browse', //按钮上的文字 
                'simUploadLimit' : 3, //一次同步上传的文件数目 
                'sizeLimit'      : 19871202, //设置单个文件大小限制 
                'queueSizeLimit' : 2, //队列中同时存在的文件个数限制 
                'fileDesc'       : '支持格式:/doc/xls/jpg/gif/jpeg/png/bmp.', //如果配置了以下的'fileExt'属性，那么这个属性是必须的 
                'fileExt'        : '*.doc;*.xls;*.jpg;*.gif;*.jpeg;*.png;*.bmp',//允许的格式   
            onComplete: function (event, queueID, fileObj, response, data) { 
									$('<li></li>').appendTo('.files').text(response); 
									}, 
			onError: function(event, queueID, fileObj) { 
	             alert("文件:" + fileObj.name + "上传失败"); 
	       }, 
       		onCancel: function(event, queueID, fileObj){ 
	       		alert("取消了" + fileObj.name); 
	       } 
            }); 
        }); 
	</script>
	
	<script type="text/javascript"> 
                  //必须的 
		function uploadifyUpload(){ 
   			$('#fileupload').uploadifyUpload(); 
		} 
	</script> 
</head>

   

