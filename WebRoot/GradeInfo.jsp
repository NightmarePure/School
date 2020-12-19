<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		   
		<title>My JSP 'main.jsp' starting page</title>
		   
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="CSS/styles.css">
		
		<script type="text/javascript" charset="utf8" >
			function lnavChange(value) {
				var l=["学生成绩","通知文件"];
				for(var i=0;i<l.length;i++){
					if(i==value)
						document.getElementById(l[i]).style.display="block";
					else
						document.getElementById(l[i]).style.display="none";
				}
			}
		</script>
	</head>
  
	<body onload="lnavChange(0);">
		<jsp:include page="Upper.jsp" flush="false"/>
		<div class="lnav">
			<a href="javascript:void(0);" onclick="lnavChange(0)">学生成绩</a><br>
			<a href="javascript:void(0);" onclick="lnavChange(1)">通知文件</a><br>
		</div>
		<div class="content" >
			<div id="学生成绩">这是学生成绩。</div>
			<div id="通知文件">Notice File.</div>
		</div>
		<jsp:include page="Downner.jsp" flush="false"/>
	</body>
</html>