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
<script src="<%=basePath %>js/courseType.js"></script>
<script src="<%=basePath %>js/jquery-1.8.0.min.js"></script>
</head>
<body>
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="39%" align="left">[课程类别]</td>
   
    <td width="57%"align="right">
		<a href="javascript:void(0)" onclick="javascript:document.forms[0].submit();">
			<img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" />
		</a>      
    	<a href="<%=basePath %>QueryBeforeupdateOrAddCourseType"><img src="${pageContext.request.contextPath}/images/button/tianjia.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>


<!-- 条件查询 -->
<form action="<%=basePath%>courseTypeList" method="post" id="selectForm">
<input type="hidden" id = "currentPage" value=""/>
<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">课程类别：</td>
	    <td><input type="text" name="coursename" size="30" value="${crmCourseTypeCustom.coursename }"/></td>
	  </tr>
	  <tr>
	    <td >课程简介：</td>
	    <td ><input type="text" name="remark" size="30" value="${crmCourseTypeCustom.remark }"/></td>
	  </tr>
	  <tr>  
	    <td >总学时：</td>
	    <td ><input type="text" name="totalBegin" size="12" value="${crmCourseTypeCustom.totalBegin }"/>至 
	    <input type="text" name="totalEnd" size="12" value="${crmCourseTypeCustom.totalEnd }"/></td>
	  </tr>
	  <tr>
	    <td>课程费用：</td>
	    <td ><input type="text" name="courseCostBegin" size="12" value="${crmCourseTypeCustom.courseCostBegin }"/>至 
	    <input type="text" name="courseCostEnd" size="12" value="${crmCourseTypeCustom.courseCostEnd }"/></td>
	  </tr>
	</table>
</form>

<!-- 信息展示 -->
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="97%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">
    <td width="14%" align="center">名称</td>
    <td width="33%" align="center">简介</td>
    <td width="13%" align="center">总学时</td>
    <td width="18%" align="center">收费标准</td>
	<td width="11%" align="center">编辑</td>
  </tr>
  <%-- 单行：tabtd2 ，双行：tabtd1 --%>
		<c:forEach items="${courseTypeList }" var="courseType" varStatus="index">
			<tr
				<c:choose>
 			<c:when test="${index.count%2  eq 1}">
 				class="tabtd1"
 			</c:when>
 			<c:otherwise>
 				class="tabtd2"
 			</c:otherwise>
 		</c:choose>>
				<td>${courseType.coursename }</td>
				<td>${courseType.remark }</td>
				<td>${courseType.total }</td>
				<td>${courseType.coursecost }</td>
				<td><a
					href="<%=basePath%>QueryBeforeupdateOrAddCourseType?coursetypeid=${courseType.coursetypeid}"><img
						src="${pageContext.request.contextPath}/images/button/modify.gif"
						class="img" /></a></td>
			</tr>
		</c:forEach>
 
</table>

<!-- 分页模块 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="javascript:getCurrentPage('${page.firstPage }');">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="javascript:getCurrentPage('${page.prePage }');">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="javascript:getCurrentPage('${page.nextPage }');">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="javascript:getCurrentPage('${page.pages }');">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
