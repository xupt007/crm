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
<script src="<%=basePath%>js/jquery-1.8.0.min.js"></script>	
<script src="<%=basePath%>js/refer.js"></script>
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
       <a href="javascript:void(0);" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0);" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath %>updateOrInsertRefer" method="post">
<c:if test="${empty referCustom.referid }">
	<input type="hidden" name="staffid" value="${sessionScope.crmStaff.staffid }"/>
</c:if>
<c:if test="${!empty referCustom.referid }">
	<input type="hidden" name="referid" value="${referCustom.referid }"/>
	<input type="hidden" id="classid" value="${referCustom.classid }"/>
	<input type="hidden" id="name" value="${referCustom.className }"/>
	<input type="hidden" name="staffid" value="${referCustom.staffid }"/>
</c:if>
<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
	  <tr>
	    <td width="120px" height="35" align="left" >姓名：</td>
	    <td width="300px" align="left">
	    	<input type="text" name="name" value="${referCustom.name }"/>
	    </td>
	    	<c:if test="${empty referCustom.referid }">
	    		<td>状态：咨询中
	    			<input type="hidden" name="status" value="1"/>
	    		</td>
	    	</c:if>
	    	<c:if test="${!empty referCustom.referid }">
	    		<td>
	    			<select name="status">
	    				<c:if test="${referCustom.status eq '1'}">
	    					<option value="1">状态：咨询中</option>
	    					<option value="2">状态：已报名</option>
	    				</c:if>
	    				<c:if test="${referCustom.status eq '2'}">
	    					<option value="2">状态：已报名</option>
	    					<option value="1">状态：咨询中</option>
	    				</c:if>
	    			</select>
	    		</td>
	    	</c:if>
	  </tr>
	  <tr>
	    <td>电话：</td>
	    <td><input type="text" name=telephone value="${referCustom.telephone }"/></td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>QQ：</td>
	    <td><input type="text" name=qq value="${referCustom.qq }"/></td>
	    <td>&nbsp;</td>
	  </tr>
	  <c:if test="${!empty referCustom.referid }">
	  	<tr>
	    <td>咨询人：</td>
	    <td>${referCustom.staffName }</td>
	    <td>&nbsp;</td>
	  	</tr>
	  </c:if>
	  <tr>
	    <td>意向级别：</td>
	    <td>
	    	<input type="text" name="intentionlevel" value="${referCustom.intentionlevel }"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>意向学科：</td>
	    <td>
	    	<select id="courseSelect" name="coursetypeid" onchange="courseChange()">
	    		<c:choose>
	    			<c:when test="${!empty referCustom.coursetypeid }">
	    				<option value="${referCustom.coursetypeid}">${referCustom.courseName}</option>
	    				<option value="">--请选择学科--</option>
	    				<c:forEach items="${courseList }" var="course">
	    					<c:if test="${referCustom.coursetypeid != course.coursetypeid}">
	    						<option value="${course.coursetypeid }">${course.coursename }</option>
	    					</c:if>
			    		</c:forEach>
	    			</c:when>
	    			<c:otherwise>
		    			<option value="">--请选择学科--</option>
			    		<c:forEach items="${courseList }" var="course">
	    					<option value="${course.coursetypeid }">${course.coursename }</option>
			    		</c:forEach>
	    			</c:otherwise>
	    		</c:choose>
	    	</select>
	    	&nbsp;&nbsp;&nbsp;意向班级:
	    	<select id="ClassSelectId" name="classid">
	    		<option value="">--请选择班级--</option>
	    	</select>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td height="41" align="left">来源：</td>
	    <td align="left"><input type="text" name="source" value="${referCustom.source }"/> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td align="left">备注：</td>
	    <td align="left">
	    	<input type="text" name="remark" value="${referCustom.remark }"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">&nbsp;</td>
	  </tr>
	  </table>
</form>

</body>
</html>
