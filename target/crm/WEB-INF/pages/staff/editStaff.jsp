<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Calendar.js"></script>
<script src="<%=basePath%>js/jquery-1.8.0.min.js"></script>
<script src="<%=basePath%>js/staff.js"></script>
</head>
<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif" /></td>
    <td width="44%" align="left">[员工管理]</td>
   
    <td width="52%"align="right">
    	<!-- 提交表单 -->
       <a href="javascript:void(0)" onclick="document.forms[0].submit()">
       	<img src="${pageContext.request.contextPath}/images/button/save.gif" />
       </a>
       <!-- 执行js，进行返回 -->
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<form action="<%=basePath %>addOrUpdateStaff">
	<c:if test="${crmStaffCustom.postid !=null }">
		<input type="hidden" id="postid" value="${crmStaffCustom.postid}"/>
		<input type="hidden" id="postname" value="${crmStaffCustom.postname}"/>
	</c:if>
	<input type="hidden" name="staffid" value="${crmStaffCustom.staffid }"/>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	 <tr>
	    <td>登录名：</td>
	    <td><input type="text" name="loginname" value="${crmStaffCustom.loginname }"/></td>
	    <td>密码：</td>
	    <td><input type="password" name="loginpwd" value="${crmStaffCustom.loginpwd }"/></td>
	  </tr>
	 <tr>
	    <td>姓名：</td>
	    <td><input type="text" name="staffname" value="${crmStaffCustom.staffname }"/></td>
	    <td>性别：</td>
	    <td>
			<c:if test="${crmStaffCustom.gender eq '男'}">
				<input type="radio" name="gender" value="男" checked="checked"/>男
				<input type="radio" name="gender" value="女"/>女
			</c:if>
			<c:if test="${crmStaffCustom.gender eq '女'}">
				<input type="radio" name="gender" value="男"/>男
				<input type="radio" name="gender" value="女" checked="checked"/>女
			</c:if>
	    </td>
	  </tr>
	 <tr>
	    <td width="10%">所属部门：</td>
	    <td width="20%">
	    	<select id="depSelect" name="depid" onchange="depChange()">
				<option value="${crmStaffCustom.depid}">${crmStaffCustom.depname}</option>
				<option value="">--请选择部门--</option>
				<c:forEach items="${depList }" var="dep">
					<c:if test="${crmStaffCustom.depid != dep.depid}">
						<option value="${dep.depid }">${dep.depname }</option>
					</c:if>
				</c:forEach>
			</select>
		</td>
	    <td width="8%">职务：</td>
	    <td width="62%">
	    	<select id="postSelectId" name="postid">
	    		<option>--请选择职务--</option>
	    	</select>
	    </td>
	  </tr>
	   <tr>
	    <td width="10%">入职时间：</td>
	    <td width="20%">
	    	<input type="date" name="ondutydate" value="${crmStaffCustom.ondutydate}"/>
	    </td>
	    <td width="8%"></td>
	    <td width="62%"></td>
	  </tr>
	</table>
</form>
</body>
</html>
