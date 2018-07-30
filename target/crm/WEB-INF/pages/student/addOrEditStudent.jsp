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
<script src="<%=basePath%>js/refer.js"></script>
</head>

<body class="emp_body">
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table  border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="${pageContext.request.contextPath}/images/tleft.gif"/></td>
    <td width="44%"  >[编辑正式学员]</td>
   
    <td width="52%"align="right">
       <a href="javascript:void(0);" onclick="document.forms[0].submit()"><img src="${pageContext.request.contextPath}/images/button/save.gif" /></a>
       <a href="javascript:void(0);" onclick="window.history.go(-1)"><img src="${pageContext.request.contextPath}/images/button/tuihui.gif" /></a>
    </td>
    <td width="3%" align="right"><img src="${pageContext.request.contextPath}/images/tright.gif"/></td>
  </tr>
</table>
<form action="<%=basePath %>updayeOrInsertStudent" method="post">
	<c:if test="${!empty studentCustom}">
		<input type="hidden" name="status" value="${studentCustom.status }"/>
		<input type="hidden" name="referid" value="${studentCustom.referid }"/>
		<input type="hidden" id="classid" value="${studentCustom.classid}"/>
		<input type="hidden" id="name" value="${studentCustom.className}"/>
	</c:if>
	<table width="88%" class="emp_table">
	  <tr>
	    <td width="100px">姓名：</td>
	    <td width="200px"><input type="text" name="name" value="${studentCustom.name}"/></td>
	    <td width="80px">性别：</td>
	    <td>
	    	<input type="radio" name="gender" value="男" <c:if test="${studentCustom.gender eq '男'}">checked="checked"</c:if>/>男
			<input type="radio" name="gender" value="女" <c:if test="${studentCustom.gender eq '女'}">checked="checked"</c:if>/>女
	    </td>
	  </tr>
	  <tr>
	    <td  >应付学费：</td>
	    <td  ><input type="text" name="musttuition" value="${studentCustom.musttuition}"/></td>
	    <td  >实付学费：</td>
	    <td  ><input type="text" name="actualtuition" value="${studentCustom.actualtuition}"/></td>
	  </tr>
	  <tr>
	    <td  >身份证号：</td>
	    <td  ><input type="text" name="identity" value="${studentCustom.identity}"/></td>
	    <td  >手机号：</td>
	    <td  ><input type="text" name="telephone" value="${studentCustom.telephone}"/></td>
	  </tr>
	  <tr>
	    <td  >QQ号：</td>
	    <td  ><input type="text" name="qq" value="${studentCustom.qq}"/></td>
	    <td  >邮箱：</td>
	    <td  ><input type="text" name="email" value="${studentCustom.email}"/></td>
	  </tr>
	  <tr>
	    <td  >就读班级：</td>
	    <td   colspan="3">
	    	类别 <select id="courseSelect" onchange="courseChange()">
                <c:choose>
                    <c:when test="${!empty studentCustom }">
                        <option value="${studentCustom.coursetypeid}">${studentCustom.courseName}</option>
                        <option value="">--请选择学科--</option>
                        <c:forEach items="${courseList }" var="course">
                            <c:if test="${studentCustom.coursetypeid != course.coursetypeid}">
                                <option value="${course.coursetypeid }">${course.coursename }</option>
                            </c:if>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <option value="">--请选择学科--</option>
                        <c:forEach items="${courseList }" var="course">
                            <option value="${course.coursetypeid }">${course.coursename }</option>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </select>
	    	班级
            <select id="ClassSelectId" name="classid">
                <option value="">--请选择班级--</option>
            </select>
	    </td>
	  </tr>
	  <tr>
	    <td  >毕业学校：</td>
	    <td  ><input type="text" name="school" value="${studentCustom.school}"/></td>
	    <td  >学历：</td>
	    <td  >
	        <input type="text" name="education" value="${studentCustom.education}"/>
	    	专业: <input type="text" name="professional" value="${studentCustom.professional}"/>
	    </td>
	  </tr>
	  <tr>
	    <td  >身份证地址：</td>
	    <td   colspan="3"><input type="text" name="identityaddress" value="${studentCustom.identityaddress}"/></td>
	  </tr>
	  <tr>
	    <td  >在京地址：</td>
	    <td   colspan="3"><input type="text" name="address" value="${studentCustom.address}"/></td>
	  </tr>
	  <tr>
	    <td  >学员描述：</td>
	    <td   colspan="3"><input type="text" name="remark" value="${studentCustom.remark}"/></td>
	  </tr>
	  <tr>
	    <td colspan="6"><br/>出门在外，如果发生意外，我们将通过下面的信息跟学院的家长联系</td>
	    </tr>
	   <tr>
	    <td  >家庭联系电话：</td>
	    <td  ><input type="text" name="hometelephone" value="${studentCustom.hometelephone}"/></td>
	    <td  >家庭联系人：</td>
	    <td  ><input type="text" name="homecontact" value="${studentCustom.homecontact}"/></td>
	  </tr>
	</table>
</form>
</body>
</html>