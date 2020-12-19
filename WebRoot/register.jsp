<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<script language="javascript" type="text/javascript">
		function uNameOnFcs(){
			var un=document.getElementById("userName");
			var ut=document.getElementById("userTip");	
			var uw=document.getElementById("userWarning");
			
			uw.style.display="none";
			ut.style.display="block";
			un.style="inputBox";
		}
		function uNameOnBlr(){
			var un=document.getElementById("userName");
			var ut=document.getElementById("userTip");	
			var uw=document.getElementById("userWarning");
			
			var reg=/^[a-zA-Z][a-zA-Z0-9_]{3,15}$/;
			if(reg.test(un.value) ){
				uw.style.display="none";
				ut.style.display="none";
				
			}
			else{
				uw.style.display="block";
				ut.style.display="block";
			}
				
		}
		function uPwdOnFcs(){
			var pt=document.getElementById("pwdTip");	
			
			pt.style.display="block";
		}
		function uPwdOnBlr(){
			var up=document.getElementById("userPwd");
			var pt=document.getElementById("pwdTip");	
			
			if(up.value!=""){
				pt.style.display="none";
			}
			else{
				pt.style.display="block";
			}
				
		}
		function CKPwdOnFcs(){
			var cp=document.getElementById("CKuserPwd");
			var cw=document.getElementById("pwdCheckWarning");	
			if(cp.value!=document.getElementById("userPwd").value)
				cw.style.display="block";
		}
		function CKPwdOnBlr(){
			var cp=document.getElementById("CKuserPwd");
			var cw=document.getElementById("pwdCheckWarning");	
			
			if(cp.value==document.getElementById("userPwd").value && cp.value!=""){
				cw.style.display="none";
			}
			else{
				cw.style.display="block";
			}
				
		}
		
		function AllCheck(){
			uNameOnBlr();
			uPwdOnBlr();
			CKPwdOnBlr();
			if(document.getElementById("userWarning").style.display=="none" && document.getElementById("pwdTip").style.display=="none" && document.getElementById("pwdCheckWarning").style.display=="none")
				return true;
			else{
				alert("依然存在不合法的输入！");
				return false;
			}
		}
	</script>
  </head>
  
  <body>
    <fieldset>
    	<h1>注册新用户</h1>
    	<form action='registerServlet' method='post'>
    		<table cellpadding='2' align='center' bgcolor=white>
    			<tr>
    				<td align='right'><label for='userName' class="textLbl">用户名：</label></td>
    				<td>
    					<input type='text' name='userName' class="inputBox" onfocus="uNameOnFcs()" onblur="uNameOnBlr()"/>
    					<span id="userTip" class="tips">用户名由英文字母、数字及下划线构成，开头只能为字母</span>
    					<span id="userWarning" class="warnings">输入格式不正确</span>
    					</td>
    			</tr>
    			<tr>
    				<td align='right'><label for='userPwd' class="textLbl">密码：</label></td>
    				<td>
    					<input type='password' id='userPwd' name='userPwd' class="inputBox" onfocus="uPwdOnFcs()" onblur="uPwdOnBlr()"/>
    					<span id="pwdTip" class="tips">请输入密码</span>
    					</td>
    			</tr>
    			<tr>
    				<td align='right'><label for='CKuserPwd' class="textLbl">确认密码：</label></td>
    				<td>
    					<input type='password' id='CKuserPwd' class="inputBox" onfocus="CKPwdOnFcs()" onblur="CKPwdOnBlr()"/>
    					<span id="pwdCheckWarning" class="warnings">两次密码输入不一致</span>
    					</td>
    			</tr>
    			<tr>
    				<td align='right' class="textLbl">性别：</td>
    				<td>
    					<input type='radio' name='userGender' value="男" id='男' checked/><label for='男' class="checkBox">男</label>
    					<input type='radio' name='userGender' value="女" id='女'/><label for='女' class="checkBox">女</label>
    				</td>
    			</tr>
    			<tr>
    				<td align='right' class="textLbl">兴趣：</td>
    				<td>
    					<input type='checkbox' name='userInterest1' value='film' id='film'/><label for='film' class="checkBox">看电影</label>
    					<input type='checkbox' name='userInterest2' value='code' id='code'/><label for='code' class="checkBox">敲代码</label>
    					<input type='checkbox' name='userInterest3' value='game' id='game'/><label for='game' class="checkBox">玩游戏</label>
    				</td>
    			</tr>
    			<tr>
    				<td align='right'><label for='userInfo' class="textLbl">基本信息：</label></td>
    				<td><textarea rows='5' name='userInfo' id='userInfo' style="width:350px"></textarea></td>
    			</tr>
    			<tr>
    				<td colspan=2 align='center'>
    					<input type="submit" value="提交" class="btn" onclick="return AllCheck();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    					<input type="reset" value="重置" class="btn"></td>
    			</tr>
    			<tr>
    				<td colspan="2" style="text-align: right;">
    					<a href="login.jsp">返回登录界面</a>
    				</td>
    			</tr>
    		</table>
    	</form>
    </fieldset>	
  </body>
</html>
