<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>登录</title>
<style type="text/css">
	.cla1 {
	font-size: 12px; color: #4b4b4b; line-height: 18px; text-decoration: none
	}
	.login_msg{
		font-family:serif;
	}
	.login_msg .msg{
		background-color: #acf;
	}
	.login_msg .btn{
		background-color: #9be;
		width: 73px;
		font-size: 18px;
		font-family: 微软雅黑;
	}
	#msg {
		color: red;
		text-align: center;
		font-weight: bold;
	}
</style>
	<script type="text/javascript">
		if(self != top){
			top.location = self.location;
		}
	</script>
<meta http-equiv=content-type content="text/html; charset=utf-8">
<link href="<%=basePath%>/css/style.css" type=text/css rel=stylesheet>
<meta content="mshtml 6.00.2600.0" name=generator></head>
<body leftmargin=0 topmargin=0 marginwidth="0" marginheight="0" background="<%=basePath%>/images/rightbg.jpg">
<div align="center">
	<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
		<tr>
			<td height="93"></td>
			<td></td>
		</tr>
		<tr>
			<td background="<%=basePath%>/images/right.jpg"  width="740" height="412"></td>
			<td class="login_msg" width="400">
				<form action="staffLogin" method="post">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=basePath%>/images/title.png" width="185" height="26"/>
					<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#ff0000">
						<span id="msg">${error}</span>
					</font> 
					<br/>
					用户名：
					<input type="text" class="msg" name="loginname" value="${loginname }"/><br/><br/>
					密&nbsp;码：
					<input type="password" class="msg" name="loginpwd"/><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" class="btn" value="登录"/>
					<%-- 
					<s:reset cssclass="btn" value=" 注册" onclick="registerurl()"></s:reset>
					--%>
				</form>	
			</td>
		</tr>
		<tr>
			<td><a href="frame">jsp页面</a></td>
		</tr>
	</table>
</div>
</body>
</html>