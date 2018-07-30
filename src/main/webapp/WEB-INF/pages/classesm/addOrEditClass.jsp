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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/sys.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Calendar.js"></script>
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
    <td width="44%" align="left">[编辑班级]</td>
   
    <td width="52%"align="right">
    	<a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();">
    		<img src="${pageContext.request.contextPath}/images/button/save.gif" />
    	</a>
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath %>updateOrInsertClass" method="post">
	<c:if test="${!empty classCustom }">
		<input type="hidden" name="classid" value="${classCustom.classid }"/>
	</c:if>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">班级名称：</td>
	    <td width="20%"><input type="text" name="name" value="${classCustom.name }"/> </td>
	    <td width="8%">所属类别：</td>
	    <td width="62%">
	    	<select name="coursetypeid">
	    		<c:choose>
	    			<c:when test="${classCustom.coursetypeid !=null && !empty classCustom.coursetypeid}">
	    				<option value="${classCustom.coursetypeid}">${classCustom.courseName}</option>
	    				<option value="">--请选择部门--</option>
	    				<c:forEach items="${courseList }" var="course">
	    					<c:if test="${classCustom.coursetypeid != course.coursetypeid}">
	    						<option value="${course.coursetypeid }">${course.coursename }</option>
	    					</c:if>
			    		</c:forEach>
	    			</c:when>
	    			<c:otherwise>
		    			<option value="">--请选择部门--</option>
			    		<c:forEach items="${courseList }" var="course">
	    						<option value="${course.coursetypeid }">${course.coursename }</option>
			    		</c:forEach>
	    			</c:otherwise>
	    		</c:choose>
	    	</select>
		</td>
	  </tr>
	  <tr>
	    <td>开课时间：</td> 
	    <td>
	    	<input type="date" name="begintime" value="${classCustom.begintime }"/>
	    </td>
	    <td>结业时间：</td>
	    <td>
	    	<input type="date" name="endtime" value="${classCustom.endtime }"/>
	    </td>
	  </tr>
	  <tr>
	    <td>其他说明：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4"><textarea rows="4" cols="30" name="remark" style="border: 1px solid #c3ced0;">
	    	${classCustom.remark }
	    </textarea></td>
	  </tr>
	</table>
</form>
</body>
</html>
