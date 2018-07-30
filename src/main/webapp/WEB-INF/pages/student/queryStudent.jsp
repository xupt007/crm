<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
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
    <td width="44%" align="left">[编辑正式学员]</td>
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="window.history.go(-1)">
       		<img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/>
       	</a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" class="emp_table">
  <tr>
    <td width="80px" align="left">姓名：</td>
    <td width="200px" align="left">${studentCustom.name}</td>
    <td></td>
  </tr>
  <tr>
    <td width="80px" align="left">状态：</td>
    <td align="left">
    	${studentCustom.status}
    </td>
    <td></td>
  </tr>
  <tr>
    <td align="left">类别 ：</td>
    <td align="left" colspan="3">
    	${studentCustom.courseName}
    </td>
    <td></td>
  </tr>
  <tr>
    <td align="left">班级：</td>
    <td align="left" colspan="3">
    	${studentCustom.className}
    </td>
  </tr>
</table>
</html>