<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Anchor Portal</title>
		<script type="text/template" src="${pageContext.request.contextPath}/html/forms/abrasiveTrialReport.html"></script>
		<link href="${pageContext.request.contextPath}/res/css/main.css" rel="stylesheet" >
		<script src="${pageContext.request.contextPath}/res/libs/jquery-3.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/libs/underscore-min.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/forms.js"></script>
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
				
				<div style="width:80%;color:white;">	
					<div style="width:25%;float:left;">
					
						<div class="vertical-menu" style="height:auto;overflow:hidden;">
						  	<a class="reportLink" data-report-id="abrasiveTrialReport" style="cursor:pointer;" data-selected="false">Abrasive Trial Report</a>
							<a class="reportLink" data-report-id="customerFeedback" style="cursor:pointer;" data-selected="false">Customer Feedback</a>
							<a class="reportLink" data-report-id="customerOperationsReport" style="cursor:pointer;" data-selected="false">Customer Operations Request</a>
							<a class="reportLink" data-report-id="requestForQuotation" style="cursor:pointer;" data-selected="false">Request for Quotation</a>
							<a class="reportLink" data-report-id="verbalOrder" style="cursor:pointer;" data-selected="false">Verbal Order</a>
						</div>
						
						<div style="margin-top:20px;">
							<label for="customerId" style="margin-bottom:10px;">Customer ID</label>
							<input style="margin-bottom:10px;" id="customerId" type="text"></input>
							<input style="margin-bottom:10px;" type="button" id="populateCustomerInfo" value="Populate Customer Info"/>
						</div>
						
						<div style="margin-top:20px;">
							<label for="sendToEmail" style="margin-bottom:10px;">Send Copy to Email</label>
							<input type="checkbox" id="sendToEmail" style="margin-bottom:10px;"/>
							<div id="emailInput" style="margin-top:10px;">
								<label for="emailAddress" style="margin-bottom:10px;">Email Address</label>
								<input style="margin-bottom:10px;" id="emailAddress" type="text"></input>
							</div>
						</div>
						
						<input type="button" id="submitReport" value="Submit" style="margin-top:20px;"/>
					
					</div>
					
					<div id="formContainer" style="width:70%;float:right;">
						
					</div>
				</div>
			</div>
		</div>
	</body>
</html>