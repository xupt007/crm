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
<script src="<%=basePath%>js/classToStudent.js"></script>
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
    <td width="44%" align="left">[添加学员就业信息]</td>
   
	<td width="52%"align="right">
    	<!-- 添加 -->
		<a href="javascript:void(0)" onclick="document.forms[0].submit()">
			<img src="${pageContext.request.contextPath}/images/button/save.gif" />
		</a>
		<a href="javascript:void(0)" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath %>insertGraguate" method="post">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="9%">班级：</td>
	    <td width="19%">
	    	<select id="classSelect" name="classid" onchange="classChange()">
	    		<option value="">--请选择班级--</option>
	    		<c:forEach items="${classList }" var="classes">
	    			<option value="${classes.classid }">${classes.name }</option>
	    		</c:forEach>
	    	</select>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="9%">学生：</td>
	    <td width="19%">
	    <select id="studentSelectId" name="studentid">
	    	<option value="">--选择学生--</option>
	    </select>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>就业公司：</td>
	    <td><input type="text" name="companyname"/></td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>薪资：</td>
	    <td><input type="text" name="salary"/></td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>岗位：</td>
	    <td><input type="text" name="post"/></td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>入职时间：</td>
	    <td>
	    	<input type="date" name="entrytime"/>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>备注：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">
	    	<input type="text" name="remark"/>
	    </td>
	  </tr>
	</table>
</form>
<!-- <s:form namespace="/graduate" action="graduateAction_addOrEdit">
	<table width="88%" border="0" class="emp_table" style="width:80%;">
	  <tr>
	    <td width="9%">班级：</td>
	    <td width="19%">
	    	<s:select list="allClass" name="crmStudent.crmClass.classId"
	    		headerKey="" headerValue="--选择班级--"
	    		listKey="classId" listValue="name"
	    		onchange="changeStudent(this)"
	    		>
	    	</s:select>
	    </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td width="9%">学生：</td>
	    <td width="19%"><select id="studentSelectId" name="crmStudent.studentId" ><option>--选择学生--</option></select></td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>就业公司：</td>
	    <td><s:textfield name="companyName"/> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>薪资：</td>
	    <td><s:textfield name="salary"/> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>岗位：</td>
	    <td><s:textfield name="post"/>  </td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>入职时间：</td>
	    <td><s:textfield name="entryTime" readonly="true" onfocus="c.showMoreDay=true; c.show(this);"/> </td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td>备注：</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="3">
	    	<s:textarea name="remark" cols="60" rows="10"></s:textarea>
	    </td>
	  </tr>
	</table>
</s:form> -->
</html>