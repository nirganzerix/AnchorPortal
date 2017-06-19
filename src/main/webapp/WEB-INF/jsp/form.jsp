<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Anchor Portal</title>
		<link href="${pageContext.request.contextPath}/res/css/main.css" rel="stylesheet" >
	</head>
	<body id="loginBody">
		<div id="pageBorder" align=center>
			<div id="pageContainer">
				<a href="/AnchorPortal/home"><img style="margin-top:6%;" src="/AnchorPortal/res/images/anchor_logo.png"></a>
			
				<span style="color:white;display:inline-block;vertical-align:top;margin-top:6%;margin-left:37%;">
					<span style="margin-right:10px;">Hello, John</span>
					<span>|</span>
					<a href="/AnchorPortal/login" style="margin-left:10px;color:white;">Logout</a>
				</span>
				<br/><br/>
				
				<%@ include file="/html/forms.html" %>
			</div>
		</div>
	</body>
</html>