<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
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
    <td width="44%" align="left">[编辑课程]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<!-- 添加的内容表单 -->
<form action="updateOrAddCourseType" method="post">
<c:if test="${!empty courseType}">
	<input type="hidden" name="coursetypeid" value="${courseType.coursetypeid }"/>
</c:if>
<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">课程类别：</td>
	    <td width="20%"><input type="text" name="coursename" value="${courseType.coursename }"/></td>
	    <td width="8%">总学时：</td>
	    <td width="62%"><input type="text" name="total" value="${courseType.total }"/></td>
	  </tr>
	  <tr>
	    <td>课程费用：</td>
	    <td><input type="text" name="coursecost" value="${courseType.coursecost }"/></td>
	    <td></td>
	    <td></td>
	  </tr>
	  <tr>
	    <td>课程简介：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4"><textarea rows="4" cols="30" name="remark" style="border: 1px solid #c3ced0;">
	    	${courseType.remark }
	    </textarea></td>
	  </tr>
	</table>
</form>
</body>
</html>
