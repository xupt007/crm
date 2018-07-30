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
<body>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="33%" align="left">[咨询学生管理]</td>
   
    <td width="63%"align="right">
        <a href="<%=basePath %>queryBeforeUpdateOrInsertRefer?referid=${refer.referid}">
        	<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
        </a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->

<form action="<%=basePath %>referList" method="post">
<!-- <s:hidden name="status" value="%{status}"></s:hidden> -->
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	    <td width="80px">查询条件：</td>
	    <td width="300px"><input type="text" name="condition" size="20" onblur="document.forms[0].submit();"/>（姓名|电话|QQ）</td>
	    <td ></td>
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
	<td width="80px" align="center">姓名</td>
	<td width="9%" align="center">电话</td>
	<td width="11%" align="center">QQ </td>
	<td width="15%" align="center">意向类别/班级</td>
	<td width="17%" align="center">状态</td>
	<td width="10%" align="center">营销人员</td>
	<td width="8%" align="center">查看</td>

  </tr>
 			<c:forEach items="${referList }" var="refer" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
 				<td>${refer.name }</td>
 				<td>${refer.telephone }</td>
 				<td>${refer.qq }</td>
 				<td>${refer.courseName }/${refer.className }</td>
 				<c:if test="${refer.status eq '1'}">
 					<td>咨询中</td>
 				</c:if>
 				<c:if test="${refer.status eq '2'}">
 					<td>已报名</td>
 				</c:if>
 				<td>${refer.staffName }</td>
 				<!-- 查看 -->
				<td>
					<a href="<%=basePath %>queryReferById?referid=${refer.referid}" >
						<img src="${pageContext.request.contextPath}/images/button/view.gif" class="img"/>
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
        	<a href="referList?currentPage=${page.firstPage }&status=2">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="referList?currentPage=${page.prePage }&status=2">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="referList?currentPage=${page.nextPage }&status=2">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="referList?currentPage=${page.pages }&status=2">[尾页]</a>
        </span>
    </td>
  </tr>
</table>

</body>
</html>
