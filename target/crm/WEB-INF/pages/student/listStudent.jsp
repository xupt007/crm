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
<body >
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="39%" align="left">[在校学生管理]</td>
   
    <td width="57%"align="right">
    	<%--查询 --%>
       <a href="javascript:void(0)" onclick="document.forms[0].submit();"><img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" /></a>
    	<a href="<%=basePath %>queryBeforeUpdateOrInsertStudent"><img src="${pageContext.request.contextPath}/images/button/tianjia.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form action="<%=basePath%>studentList" method="post">
	<c:if test="${!empty studentCustom.coursetypeid}">
		<input type="hidden" id="classid" value="${studentCustom.classid}"/>
		<input type="hidden" id="name" value="${studentCustom.className}"/>
	</c:if>
	<table width="88%" border="0" style="margin: 20px;" >
		<tr>
			<td width="80px">查询条件：</td>
			<td width="300px"><input type="text" name="condition"/>（姓名|电话|QQ）</td>
			<td width="500px">
				课程类别：
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
				班级：
				<select id="ClassSelectId" name="classid">
					<option value="">--请选择班级--</option>
				</select>
			</td>
			<td></td>
		</tr>
	</table>

</form>

<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">

    <td width="10%" align="center">姓名</td>
    <td width="10%" align="center">入学时间</td>
    <td width="10%" align="center">班级</td>
    <td width="10%" align="center">QQ</td>
    <td width="10%" align="center">联系电话</td>
    <td width="10%" align="center">已付/应付学费</td>
    <td width="10%" align="center">状态</td>  <!-- 新生、转班、升级、退费、毕业 -->
  	<td width="5%" align="center">编辑</td>
  	<td width="5%" align="center">升级/转班</td>
  	<td width="5%" align="center">查看</td>
  	<td width="5%" align="center">流失</td>
  </tr>
   <%-- 单行：tabtd2 ，双行：tabtd1 --%>
 			<c:forEach items="${studentList }" var="student" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
				<td>${student.name}(${student.gender})</td>
				<td><fmt:formatDate value="${student.createtime}" pattern="yyyy-MM-dd"/></td>
				<td>${student.className}</td>
				<td>${student.qq }</td>
				<td>${student.telephone }</td>
				<td>${student.actualtuition }/${student.musttuition }</td>
				<td>${student.status }</td>
				<!-- 编辑 -->
				<td>
					<a href="<%=basePath%>queryBeforeUpdateOrInsertStudent?studentid=${student.studentid}">
						<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" />
					</a>
				</td>
				<!-- 升级/转班 -->
				<td>
					<a href="<%=basePath%>queryBeforeChangeStudent?studentid=${student.studentid}">
						<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" />
					</a>
				</td>
				<!-- 查看 -->
				<td>
					<a href="<%=basePath%>queryStudentById?studentid=${student.studentid}">
						<img src="${pageContext.request.contextPath}/images/button/view.gif" class="img"/>
					</a>
				</td>
				<!-- 流失 -->
				<td>
					<a href="<%=basePath%>queryBeforeRunoffStudent?studentid=${student.studentid}">
						<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/>
					</a>
				</td>
			</tr>
	  	</c:forEach>
</table>
 <!-- 分页区域 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="<%=basePath %>studentList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="<%=basePath %>studentList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="<%=basePath %>studentList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="<%=basePath %>studentList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>