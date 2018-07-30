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

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="44%" align="left">[添加跟踪]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0);" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>

<%-- <s:form namespace="/follow" action="followAction_addOrEdit">
	当前咨询
	<s:hidden name="crmRefer.referId" value="%{crmRefer.referId}"></s:hidden>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">跟踪信息：</td>
	    <td width="20%"><s:textarea name="content" cols="40" rows="5"></s:textarea></td>
	    <td width="70%"></td>
	  </tr>
	</table>
</s:form> --%>
<form action="<%=basePath %>insertFollow" method="post">
<input type="hidden" name="referid" value="${referid }"/>
<input type="hidden" name="staffid" value="${sessionScope.crmStaff.staffid }"/>
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="10%">跟踪信息：</td>
	    <td width="20%"><input type="text" name="content"/></td>
	    <td width="70%"></td>
	  </tr>
	</table>
</form>
</body>
</html>