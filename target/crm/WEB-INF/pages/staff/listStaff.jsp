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
<script src="<%=basePath%>js/staff.js"></script>
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
    <td width="39%" align="left">[员工管理]</td>
   
    <td width="57%"align="right">
    	<%--高级查询 --%>
		<a href="javascript:void(0)" onclick="condition()">
			<img src="${pageContext.request.contextPath}/images/button/gaojichaxun.gif" />
		</a>
    	<%--员工注入 --%>
    	<a href="<%=basePath%>queryBeforeAddStaff">
    		<img src="${pageContext.request.contextPath}/images/button/tianjia.gif" />
    	</a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<!-- 查询条件：添加或选择马上查询 -->
<form id="conditionFormId" action="" method="post">
	<c:if test="${crmStaffCustom.postid !=null }">
		<input type="hidden" id="postid" value="${crmStaffCustom.postid}"/>
		<input type="hidden" id="postname" value="${crmStaffCustom.postname}"/>
	</c:if>
	
	<table width="88%" border="0" style="margin: 20px;" >
	  <tr>
	  <!-- 部门下拉框的逻辑,感觉自己写的好乱啊..... -->
	    <td width="80px">部门：</td>
	    <td width="200px">
	    	<select id="depSelect" name="depid" onchange="depChange()">
	    		<c:choose>
	    			<c:when test="${crmStaffCustom.depid !=null && !empty crmStaffCustom.depid}">
	    				<option value="${crmStaffCustom.depid}">${crmStaffCustom.depname}</option>
	    				<option value="">--请选择部门--</option>
	    				<c:forEach items="${depList }" var="dep">
	    					<c:if test="${crmStaffCustom.depid != dep.depid}">
	    						<option value="${dep.depid }">${dep.depname }</option>
	    					</c:if>
			    		</c:forEach>
	    			</c:when>
	    			<c:otherwise>
		    			<option value="">--请选择部门--</option>
			    		<c:forEach items="${depList }" var="dep">
			    			<option value="${dep.depid }">${dep.depname }</option>
			    		</c:forEach>
	    			</c:otherwise>
	    		</c:choose>
	    	</select>
	    </td>
	    <!-- 职务下拉框的逻辑.... -->
	    <td width="80px" >职务：</td>
	    <td width="200px" >
	    	<select id="postSelectId" name="postid">
	    		<option value="">--请选择职务--</option>
	    	</select>
	    </td>
	    <!-- 姓名模糊搜索 -->
	    <td width="80px">姓名：</td>
	    <td width="200px" ><input type="text" name="staffname" size="12" /></td>
	    <td ></td>
	  </tr>
	</table>
</form>



<!-- 信息显示区域 -->
<table border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tr>
    <td ><img src="${pageContext.request.contextPath}/images/result.gif"/></td>
  </tr>
</table>
<table width="100%" border="1" >
  <tr class="henglan" style="font-weight:bold;">
    <td width="10%" align="center">员工姓名</td>
    <td width="6%" align="center">性别</td>
    <td width="12%" align="center">入职时间</td>
    <td width="15%" align="center">所属部门</td>
    <td width="10%" align="center">职务</td>
    <td width="10%" align="center">编辑</td>
  </tr>
  <%-- 单行：tabtd2 ，双行：tabtd1 --%>
 			<c:forEach items="${staffList }" var="staff" varStatus="index">
			<tr
				<c:choose>
 					<c:when test="${index.count%2  eq 1}">
 						class="tabtd1"
 					</c:when>
 					<c:otherwise>
 						class="tabtd2"
 					</c:otherwise>
 				</c:choose>>
				<td>${staff.staffname }</td>
				<td>${staff.gender }</td>
				<td><fmt:formatDate value="${staff.ondutydate }" pattern="yyyy-MM-dd"/></td>
				<td>${staff.depname }</td>
				<td>${staff.postname }</td>
				<td><a href="<%=basePath%>queryBeforeUpdateStaff?staffid=${staff.staffid}"><img src="${pageContext.request.contextPath}/images/button/modify.gif" class="img" /></a></td>
			</tr>
	  	</c:forEach>
</table>
 <!-- 分页区域 -->
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="right">
    	<span>第${page.pageNum }/${page.pages }页</span>
        <span>
        	<a href="staffList?currentPage=${page.firstPage }">[首页]</a>&nbsp;&nbsp;
        	<c:if test="${page.pageNum >1 }">
        		<a href="staffList?currentPage=${page.prePage }">[上一页]</a>&nbsp;&nbsp;
        	</c:if>
        	<c:if test="${page.pageNum <page.pages }">
        		<a href="staffList?currentPage=${page.nextPage }">[下一页]</a>&nbsp;&nbsp;
        	</c:if>
            <a href="staffList?currentPage=${page.pages }">[尾页]</a>
        </span>
    </td>
  </tr>
</table>
</body>
</html>
