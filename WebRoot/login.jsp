<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:useBean id='user' class='beans.userbean' scope='request'/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="CSS/styles.css">
	

  </head>
  
  <body>
    	<form action='loginServlet' name= 'login' method='post'>
    		<table cellpadding='2' align='center' bgcolor=white>
    			<tr>
    				<td align='right'><label for='userName' class="textLbl">用户名：</label></td>
    				<td>
    					<input type='text' name='userName' class="inputBox"/>
    					</td>
    			</tr>
    			<tr>
    				<td align='right'><label for='userPwd' class="textLbl">密码：</label></td>
    				<td>
    					<input type='password' name='userPwd' id='userPwd' class="inputBox"/>
    					</td>
    			</tr>
    			<tr>
    				<td colspan='2' align='center'>
    					还没有账号？<a href='register.jsp'>点击注册</a>
    				</td>
    			</tr>
    			<tr>
    				<td colspan='2' align='center'>
    					<input type="submit" value="登录" class="btn" onclick="return AllCheck();">
    				</td>
    			</tr>
    		</table>
    	</form>
  </body>
</html>
