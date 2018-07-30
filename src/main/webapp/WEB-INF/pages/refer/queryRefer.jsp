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
    <td width="44%" align="left">[查看咨询学生]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="${pageContext.request.contextPath}/images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="${pageContext.request.contextPath}/images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="${pageContext.request.contextPath}/images/button/close.gif" class="img"/></a>
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="#"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
       -->
       <%--退回 --%>
      <a href="javascript:void(0);" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
  <tr>
    <td width="120px" height="35" align="left" >姓名：</td>
    <td width="300px" align="left">${referCustom.name }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>电话：</td>
    <td>${referCustom.telephone }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td>${referCustom.qq }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询人：</td>
    <td>${referCustom.staffName }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向级别：</td>
    <c:if test="${referCustom.intentionlevel eq 'A' }">
    	<td>A.马上报名</td>
    </c:if>
     <c:if test="${referCustom.intentionlevel eq 'B' }">
    	<td>B.想报名，考虑中</td>
    </c:if>
     <c:if test="${referCustom.intentionlevel eq 'C' }">
    	<td>C.有报名意向，但暂时不能报名</td>
    </c:if>
     <c:if test="${referCustom.intentionlevel eq 'D' }">
    	<td>D.不能报名，以及其他原因</td>
    </c:if>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>意向学科：</td>
    <td>${referCustom.courseName } &nbsp;&nbsp;&nbsp;意向班级：${referCustom.className }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41" align="left">来源：</td>
    <td align="left">${referCustom.source }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="left">备注：</td>
    <td align="left">${referCustom.remark }</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>跟踪信息：</td>
    <!-- <td>
    	<s:if test="status == 1">
    	<s:a namespace="/follow" action="followAction_preAddOrEdit">
    		<s:param name="crmRefer.referId" value="referId"></s:param>
    		添加跟踪
    	</s:a>
    	</s:if>
    </td> -->
    <td>
    	<c:if test="${referCustom.status eq '1'}">
    	<a href="<%=basePath %>queryBeforeInsertFollow?referid=${referCustom.referid}">添加跟踪</a>
    	</c:if>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  	<%--显示所有的跟踪 --%>
    <td colspan="3">
    	<table class="emp_table" style="width:70%; border:1px solid #CCC; margin-left:0" align="left">
	      <tr>
	        <td align="center">内容</td>
	        <td width="150px" align="center">时间</td>
	        <td width="80px" align="center">资源人员</td>
	      </tr>
	      <c:forEach items="${followList }" var="follow">
	      	<tr>
		       <td style="padding-left: 10px;">${follow.content }</td>
		       <td align="center"><fmt:formatDate value="${follow.followtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		       <td align="center">${follow.staffName }</td>
		     </tr>
	      </c:forEach>
	    </table>
	</td> 
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>

</body>
</html>