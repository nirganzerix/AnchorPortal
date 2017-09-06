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
	$('#filterReports').on('change', function(){
		var reportRows = $('#outstandingReports a');
		var filter = this.value;
		if(filter === 'all'){
			$(reportRows).show();
		} else {
			_.each(reportRows, function(row){
				$(row).hasClass(filter) ? $(row).show() : $(row).hide();
			});
		}
	});
};

$(document).ready(function(){	
	bindEvents();
	//getReportHistory();
});