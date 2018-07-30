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
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>


<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  
  <tr class="henglan" style="font-weight:bold;">

    <td width="10%" align="center">姓名</td>
    <td width="10%" align="center">操作时间</td>
    <td width="10%" align="center">操作类型</td>
    
    <td width="10%" align="center">经办人</td>
    <td width="10%" align="center">操作前的班</td>
    <td width="10%" align="center">操作后的班</td>
    
  </tr>
<%--   <s:iterator value="allStation" status="vs">
	 <tr class="<s:property value="#vs.odd ? 'tabtd2' : 'tabtd1'" />">
		<td align="center"><s:property value="crmStudent.name"/></td>
		<td align="center"><s:date name="createDate"/> </td>
		<td align="center"><s:property value="@cn.itcast.crm.constant.CommonConstant@STUDENT_STATUS[flag]"/> </td>
		
		<td align="center"><s:property value="crmStaff.staffName"/> </td>
		<td align="center"><s:property value="beforeClass.name"/></td>
		<td align="center"><s:property value="afterClass.name"/></td>
	 </tr>
  </s:iterator> --%>
   <%-- 单行：tabtd2 ，双行：tabtd1 --%>
 			<c:forEach items="${stationList }" var="station" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
				<td>${station.studentName }</td>
				<td><fmt:formatDate value="${station.createdate }" pattern="yyyy-MM-dd"/></td>
				<td>${station.flag }</td>
				<td>${station.staffName }</td>
				<td>${station.beforeClassName }</td>
				<td>${station.afterClassName }</td>
			</tr>
	  	</c:forEach>
</table>
<!-- 分页区域 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="stationList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="stationList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="stationList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="stationList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>