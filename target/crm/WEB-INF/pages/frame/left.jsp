<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html><head>
<link href="<%=basePath%>css/dtree.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=basePath%>js/dtree.js"></script>
<meta http-equiv=content-type content="text/html; charset=utf-8">
</head>
<body bgcolor=#ddf0fb leftmargin=0 topmargin=0 marginwidth="0" marginheight="0">
<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" >
<tr>
<div class="dtree">
	<script type="text/javascript">
		d = new dTree('d','${pageContext.request.contextPath}');
		d.add('01','-1','crm管理系统');
		d.add('0101','01','咨询部');
		d.add('010101','0101','咨询学生管理','<%=basePath%>referList','','right');
		d.add('010102','0101','查询报名学生','<%=basePath%>referList?status=2','','right');
		<%--
		d.add('010103','0101','学生移交','<%=basePath%>/html/remove/listremove.jsp','','right');
		d.add('010104','0101','移交历史查询','<%=basePath%>/html/remove/historyremove.jsp','','right');
		--%>
		d.add('0102','01','学工部');
		d.add('010201','0102','在校学生管理','<%=basePath%>studentList','','right');
		d.add('010202','0102','学生升级/留班','<%=basePath%>/stationList','','right');
		d.add('010203','0102','学生流失情况','<%=basePath%>/runoffList','','right');		
		d.add('0103','01','教学部');
		<%-- 班级前缀和包结构命名：classesm ，其他命名class --%>
		d.add('010301','0103','班级管理','<%=basePath%>classList','','right');
		d.add('010302','0103','课程类别','<%=basePath%>courseTypeList','','right');
		d.add('0104','01','就业部');
		d.add('010401','0104','就业情况','<%=basePath%>graguateList','','right');
		d.add('0105','01','人力资源部');
		d.add('010501','0105','部门管理','<%=basePath%>departmentList','','right');
		d.add('010502','0105','职务管理','<%=basePath%>postList','','right');
		d.add('010503','0105','员工管理','<%=basePath%>staffList','','right');
		
		document.write(d);
	</script>
	<%-- 将用户跟踪页面修改成
		* 原始页面位置：web-inf/pages/user
		* 修改页面位置：web-inf/pages/follow
	--%>
</div>
</tr>
</table>
</body>
</html>
      			
			


      