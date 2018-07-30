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
    <td width="6%" align="center">学生姓名</td>
    <td width="8%" align="center">QQ</td>
    <td width="7%" align="center">联系电话</td>
    <td width="10%" align="center">以前的班级</td>
    <td width="10%" align="center">流失原因</td>
    <td width="11%" align="center">业务时间</td>
    <td width="12%" align="center">经办人</td>
    <td width="13%" align="center">是否退款</td>
  </tr>

   <%-- 单行：tabtd2 ，双行：tabtd1 --%>
 			<c:forEach items="${runoffList }" var="runoff" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
				<td>${runoff.studentName }</td>
				<td>${runoff.qq }</td>
				<td>${runoff.telephone }</td>
				<td>${runoff.className }</td>
				<td>${runoff.remark }</td>
				<td><fmt:formatDate value="${runoff.createdate }" pattern="yyyy-MM-dd"/></td>
				<td>${runoff.staffName }</td>
				<td>${runoff.isrefund }</td>
			</tr>
	  	</c:forEach>
</table>
<!-- 分页区域 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="runoffList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="runoffList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="runoffList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="runoffList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>