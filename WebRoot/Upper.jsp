<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<div class="header">
	<div class="title">学生信息管理系统</div>
	<div class="info">
		<%= request.getSession().getAttribute("username") %>|
		<a href="exitServlet">退出</a>
	</div>
</div>

<div class="nav">
	<a href="main.jsp" >首页</a>
	<a href="PersonalCenter.jsp">个人中心</a>
	<a href="UserInfo.jsp">用户信息</a>
	<a href="StudentInfo.jsp">学生信息</a>
	<a href="CourseInfo.jsp">课程信息</a>
	<a href="GradeInfo.jsp">成绩信息</a>
</div>
