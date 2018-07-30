<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
    <td width="39%" align="left">[职务管理]</td>
   
    <td width="57%"align="right">
    	<%--添加职务 --%>
       <a href="queryBeforeUpdatePost">
       	<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
       </a>
      
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
    <td width="6%" align="center">部门名称</td>
    <td width="6%" align="center">职务名称</td>
    <td width="7%" align="center">编辑</td>
  </tr>
 <%--  <s:iterator value="allPost" status="vs">
  	<tr class="<s:property value="#vs.even?'tabtd1':'tabtd2'"/>">
	    <td align="center"><s:property value="crmDepartment.depName"/> </td>
	    <td align="center"><s:property value="postName"/> </td>
	  	<td width="7%" align="center">
	  		<s:a namespace="/post" action="postAction_preAddOrEdit">
	  			<s:param name="postId" value="postId"></s:param>
	  			<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" />
	  		</s:a>
	  	</td>
	  </tr>
  </s:iterator> --%>
  <c:forEach items="${postList }" var="post">
  	<tr
		<c:choose>
 			<c:when test="${index.count%2  eq 1}">
 				class="tabtd1"
 			</c:when>
 			<c:otherwise>
 				class="tabtd2"
 			</c:otherwise>
 		</c:choose>>
		<td>${post.depname }</td>
		<td>${post.postname }</td>
		<td>
			<a href="<%=basePath %>queryBeforeUpdatePost?postid=${post.postid }">
				<img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img"/>
			</a>
		</td>
	</tr>
  </c:forEach>
</table>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="postList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="postList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="postList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="postList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
