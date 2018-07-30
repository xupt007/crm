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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/sys.css" type="text/css"/>
<script src="<%=basePath%>js/jquery-1.8.0.min.js"></script>	
<style type="text/css">
	table tr td{
		text-align: center;
	}
</style>
<title>班级管理</title>
</head>
<body>
<!--距离页面顶端5px-->
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<form name="createForm" action="" method="post">
<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="20%" align="left">[班级管理]</td>
    <td width="42%"align="center">&nbsp;</td>
    <td width="36%"align="right">
    	<%--添加班级  /html/classesm/addClass.jsp--%>
    	<a href="<%=basePath %>queryBeforeUpdateOrInsertClass">
    		<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" class="img"/>
    	</a>
    </td>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
</form>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="97%" border="1">
<thead>
  <tr class="henglan" style="font-weight:bold;">
	<th width="300px" align="center">班级名称</th>
    <th width="200px" align="center">所属课程</th>
    <th width="80px" align="center">开班时间</th>
    <th width="80px" align="center">毕业时间</th>
    
    <th width="80px" align="center">状态</th>
    <th width="70px" align="center">学生总数</th>
    <th width="70px" align="center">升学数</th>
    <th width="70px" align="center">转班数</th>
    <th width="50px" align="center">编辑</th>
	<th width="50px" align="center">查看</th>
	<th align="center">课表</th>
  </tr>
  </thead>
  <tbody>
   <%-- 单行：tabtd2 ，双行：tabtd1 --%>
 			<c:forEach items="${classList }" var="classes" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
				<td>${classes.name }</td>
				<td>${classes.courseName }</td>
				<td><fmt:formatDate value="${classes.begintime }" pattern="yyyy-MM-dd"/>
				</td>
				<td><fmt:formatDate value="${classes.endtime }" pattern="yyyy-MM-dd"/>
				</td>
				<td>${classes.status }</td>
				<td>${classes.totalcount }</td>
				<td>${classes.upgradecount }</td>
				<td>${classes.changecount }</td>
				<td>
					<!-- 修改-->
					<a href="<%=basePath %>queryBeforeUpdateOrInsertClass?classId=${classes.classid}">
						<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/>
					</a>
				</td>
				<td>
					<!-- 查看功能 -->
					<a href="<%=basePath %>queryClassById?classId=${classes.classid}">
						<img src="${pageContext.request.contextPath}/images/button/view.gif" class="img"/>
					</a>
				</td>
				<td  title="上次上传时间：<fmt:formatDate value="${classes.uploadtime }" pattern="yyyy-MM-dd"/>">   
					<a href="<%=basePath %>queryBeforeuploadSchedule?classId=${classes.classid}">上传</a>
				<c:if test="${empty classes.uploadfilename}">
					<span>暂无</span>
				</c:if>
				<c:if test="${!empty classes.uploadfilename}">
					<a href="<%=basePath%>downloadSchedule?classId=${classes.classid}">下载</a>
				</c:if>
				</td>
			</tr>
	  	</c:forEach>
  
  </tbody>
</table>

 <!-- 分页区域 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="classList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="classList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="classList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="classList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
