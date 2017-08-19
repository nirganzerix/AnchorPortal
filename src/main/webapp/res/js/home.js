var getUser = function(){
	var user = {};
	
	return user;
};

var openReport = function(){
	//call server to generate pdf and open in browser
};

var populateReportHistory = function(reportHistory){
	//populate the table with reports
};

var getReportHistory = function(){
	var user = getUser();
	var reportHistory = $.ajax({
		url: 'getReportHistory',
		method: 'POST',
		request: user
	});
	
	populateReportHistory(reportHistory);
};

var bindEvents = function(){
	//generate report pdf when clicking a table row
};

$(document).ready(function(){	
	bindEvents();
	getReportHistory();
});