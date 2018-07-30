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
    <td width="44%" align="left">[升级/转班操作]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath %>insertStation" method="post">
<input type="hidden" name="studentid" value="${studentCustom.studentid }"/>
<input type="hidden" name="beforeclassid" value="${studentCustom.classid }"/>
<input type="hidden" name="staffid" value="${sessionScope.crmStaff.staffid }"/>
<input type="hidden" id="classid" value="${studentCustom.classid}"/>
<input type="hidden" id="name" value="${studentCustom.className}"/>
<table width="88%" class="emp_table">
	  <tr>
	    <td width="80px" align="left">姓名：</td>
	    <td width="200px" align="left">${studentCustom.name }</td>
	    <td></td>
	  </tr>
	  <tr>
	    <td width="80px" align="left">现在所在班级：</td>
	    <td width="200px" align="left">
	    	${studentCustom.courseName }班${studentCustom.className }
	    </td>
	    <td></td>
	  </tr>
	  <tr>
	    <td width="100px" align="left">操作类型：</td>
	    <td width="400px" align="left">
	    	<select name="flag">
	    	<option value="升级">升级</option>
	    	<option value="转班">转班</option>
	    	</select>
	    </td>
	    <td></td>
	  </tr>
	  <tr>
	    <td>操作学科：</td>
	    <td>
	    	<select id="courseSelect" name="coursetypeid" onchange="courseChange()">
					<c:choose>
						<c:when test="${!empty studentCustom.coursetypeid}">
							<option value="${studentCustom.coursetypeid}">${studentCustom.courseName}</option>
							<option value="">--请选择学科--</option>
							<c:forEach items="${courseList }" var="course">
								<c:if test="${studentCustom.coursetypeid != course.coursetypeid}">
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
	    	&nbsp;&nbsp;&nbsp;操作班级：
    		<select id="ClassSelectId" name="afterclassid">
				<option value="">--请选择班级--</option>
			</select>
	    </td>
	    <td>&nbsp;</td>
	</table>
</form>

</body>
</html>