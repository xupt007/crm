<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="44%" align="left">[部门管理]</td>
   
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

<%-- <s:form namespace="/department" action="departmentAction_addOrEdit">
	隐藏字段
	<s:if test="depId != null">
		<s:hidden name="depId" value="%{depId}"></s:hidden>
	</s:if>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	 <tr>
	    <td>部门名称：</td>
	    <td><s:textfield name="depName"></s:textfield></td>
	  </tr>
	</table>
</s:form> --%>
<form action="updateDepartment">
	<c:if test="${!empty department}">
		<input  type="hidden" name ="depid" value="${department.depid }"/>
	</c:if>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	 <tr>
	    <td>部门名称：</td>
	    <td><input type="text" name="depname" value="${department.depname}"/></td>
	  </tr>
	</table>
</form>
</body>
</html>
