<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				var l=["个人信息","信息修改","安全性检测"];
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
			<a href="userInfoServlet?username=<%=request.getSession().getAttribute("username") %>" onclick="lnavChange(0);">个人信息</a><br>
			<a href="javascript:void(0);" onclick="lnavChange(1);">信息修改</a><br>
			<a href="javascript:void(0);" onclick="lnavChange(2);">安全性检测</a><br>
		</div>
		<div class="content">
			<div id="个人信息" style="position: relative;top: 40%;left: 40%;">
				<table cellpadding="1">
					<tr>
						<td>用户名:</td>
						<td>${requestScope.userinfo.username}</td>
					</tr>
					<tr>
						<td>性别:</td>
						<td>${requestScope.userinfo.gender}</td>
					</tr>
					<tr>
						<td>爱好:</td>
						<td>
							${requestScope.userinfo.hobbyMovie?"电影 ":""}
							${requestScope.userinfo.hobbycode?"代码 ":""}
							${requestScope.userinfo.hobbyGames?"游戏 ":""}
						</td>
					</tr>
					<tr>
						<td>自我介绍:</td>
						<td>${requestScope.userinfo.info}</td>
					</tr>
				</table>
			</div>
			<div id="信息修改">
				<form action="userInfoChangeServlet?username=${requestScope.userinfo.username}" method="post">
					<table cellpadding='2' align='center' bgcolor=white>
						<tr>
							<td align='right' class="textLbl">用户名:</td>
							<td>${requestScope.userinfo.username}</td>
						</tr>
		    			<tr>
		    				<td align='right' class="textLbl">性别：</td>
		    				<td>
		    					<input type='radio' name='userGender' value="男" id='男' ${requestScope.userinfo.gender=='男'?'checked':''}/><label for='男' class="checkBox">男</label>
		    					<input type='radio' name='userGender' value="女" id='女' ${requestScope.userinfo.gender=='女'?'checked':''}/><label for='女' class="checkBox">女</label>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td align='right' class="textLbl">兴趣：</td>
		    				<td>
		    					<input type='checkbox' name='userInterest1' value='film' id='film'${requestScope.userinfo.hobbyMovie?"checked":""}/><label for='film' class="checkBox">看电影</label>
		    					<input type='checkbox' name='userInterest2' value='code' id='code'${requestScope.userinfo.hobbycode?"checked":""}/><label for='code' class="checkBox">敲代码</label>
		    					<input type='checkbox' name='userInterest3' value='game' id='game'${requestScope.userinfo.hobbyGames?"checked":""}/><label for='game' class="checkBox">玩游戏</label>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td align='right'><label for='userInfo' class="textLbl">基本信息：</label></td>
		    				<td><textarea rows='5' name='userInfo' id='userInfo' style="width:350px">${requestScope.userinfo.info}</textarea></td>
		    			</tr>
		    			<tr>
		    				<td colspan="2" align="center">
		    					<input type="submit" value="提交" class="btn">
		    				</td>
		    			</tr>
		    		</table>
				</form>
			</div>
			<div id="安全性检测">
				<h1>您的账号安全性很高。</h1>
				<span>其实这个功能还没做好，您先看看别的吧。</span>
			</div>
		</div>
		<jsp:include page="Downner.jsp" flush="false"/>
	</body>
</html>