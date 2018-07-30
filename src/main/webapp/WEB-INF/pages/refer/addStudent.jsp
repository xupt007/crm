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
    <td width="44%" align="left">[添加/编辑咨询学生]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/></a>-->
       <%--保存 --%>
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath%>registerStudent" method="post">
	<input type="hidden" name="referid" value="${referCustom.referid}"/>
	<table width="89%" class="emp_table" style="" align="left" cellspacing="0">
		<tr>
			<td width="120px" height="35" align="left" >姓名：</td>
			<td width="300px" align="left">
				<input type="text" name="name" value="${referCustom.name}"/>
			</td>
			<td>
				&lt;%&ndash; 状态：咨询中&ndash;%&gt;
			</td>
		</tr>
		<tr>
			<td>电话：</td>
			<td><input type="text" name="telephone" value="${referCustom.telephone}"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>QQ：</td>
			<td><input type="text" name="qq" value="${referCustom.qq}"/></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>身份证：</td>
			<td><input type="text" name="identity"/></td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>
</body>
</html>
