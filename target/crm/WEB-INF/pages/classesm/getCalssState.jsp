<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	java.util.Date utilDate = new java.util.Date(); //获取当前时间
	java.sql.Date nowDate = new java.sql.Date(utilDate.getTime());
	System.out.println(nowDate);
%>
<c:choose>
	<c:when test="${nowDate < classes.begintime}">未开班</c:when>
	<c:when test="${nowDate > classes.endtime}">已结束</c:when>
	<c:otherwise>已开班</c:otherwise>
</c:choose>
