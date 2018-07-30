<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html><head>
<meta http-equiv="content-language" content="zh-cn">
<title></title>
<meta http-equiv=content-type content="text/html; charset=gb2312">
<link href="<%=basePath%>/css/style.css" type=text/css rel=stylesheet>
<base target="_self">
<script>
	function modifypsw(){
   		var dw=window.showmodaldialog('<%=basePath%>/uiaction_staff_updpwd','', 'dialogheight:180px; dialogwidth:260px; dialogleft:500px; dialogtop:220px;edge:sunken;center:yes;location:no;help:no;resizable:no;status:no;scroll:no');
	} 
</script>

</head>
<body bgcolor=#ceebff leftmargin=0 topmargin=0 marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
	<tr>
		<td>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="420">
				<img border="0" src="<%=basePath%>/images/topbg.jpg" width="436" height="80"></td>
				<td background="<%=basePath%>/images/topbg.jpg" valign="bottom">
				<div align="right">
				<table border="0" width="145" id="table7" cellspacing="0" cellpadding="0">
					<tr>
						<td width="150" height="24"></td>
					</tr>
					<tr>
						<td width="150" height="35"><p align="right">
							<font color="#ffffff">欢迎您：
								<span>${sessionScope.crmStaff.loginname }</span> <b></b>
							</font>
						</td>
					</tr>
				</table>
				</div>
				</td>
				<td width="374" background="<%=basePath%>/images/topright.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
								<tr>
									<td height="19">
									<p align="center">
									<img border="0" src="<%=basePath%>/images/calendar.gif" align="right">&nbsp;</td>
									<td width="189">
										<font color="#ffffff">今天是：
										<script language="javascript">
												<!--
													tmpdate = new date();
													date = tmpdate.getdate();
													month = tmpdate.getmonth() + 1;
													year = tmpdate.getyear();
													//document.write(1900 + year);
													document.write(year);
													document.write("年");
													document.write(month);
													document.write("月");
													document.write(date);
													document.write("日 ");
				
													myarray = new array(6);
													myarray[0] = "星期日";
													myarray[1] = "星期一";
													myarray[2] = "星期二";
													myarray[3] = "星期三";
													myarray[4] = "星期四";
													myarray[5] = "星期五";
													myarray[6] = "星期六";
													weekday = tmpdate.getday();
													document.write(myarray[weekday]);
												// -->
												</script>
										</font>
									</td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td height="20">　</td>
					</tr>
					<tr>
						<td>
						<div align="right">
							<table border="0" width="215" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr>
									<td width="26"><img border="0" src="<%=basePath%>/images/pwd.gif"></td>
									<td width="51" valign="middle">
										<%--是否使用弹出框？ javascript:modifypsw(); 
										<a href="javascript:void(0)" onclick="javascript:modifypsw();"><font color="ffffff">更改口令</font></a>
										--%>
										<a target="right" href="<%=basePath%>staff/updPwd"><font color="ffffff">更改口令</font></a>
										<!-- <s:a target="right" namespace="/" action="uiaction_staff_updpwd">
											<font color="ffffff">更改口令</font>
										</s:a> -->
									</td>
									<td width="31"><p align="center"><img border="0" src="<%=basePath%>/images/login.gif"></td>
									<td width="55" valign="middle"><a href="<%=basePath%>staffLogout" target="_top"><font color="ffffff">重新登录</font></a></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>			  </td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="10" id="table3">
	<tr>
		<td style="border-bottom: 1px solid #ffffff; filter: progid:dximagetransform.microsoft.gradient(startcolorstr='#0075c4', endcolorstr='#ffffff', gradienttype='1'">　</td>
	</tr>
</table>

</body></html>