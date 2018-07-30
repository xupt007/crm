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
    <td width="44%" align="left">[编辑正式学员]</td>
    <td width="52%"align="right">
       <a href="javascript:void(0)" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath%>insertRunoff" method="post">
<input type="hidden" name="staffid" value="${sessionScope.crmStaff.staffid }"/>
<input type="hidden" name="studentid" value="${studentCustom.studentid }"/>
<table width="88%" class="emp_table">
	  <tr>
	    <td width="120px" align="left">学生姓名：</td>
	    <td width="200px" align="left">${studentCustom.name }</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">是否退款：</td>
	    <td width="200px" align="left">
	    	<select name="isrefund">
	    		<option>--请选择--</option>
	    		<option value="退款">退款</option>
	    		<option value="不退">不退</option>
	    	</select>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">退款金额：</td>
	    <td width="200px" align="left">
	    	<input type="text" name="refundamount"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="120px" align="left">描述：</td>
	    <td width="200px" align="left">
	    	<input type="text" name="remark"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	</table>
</form>
</body>
</html>