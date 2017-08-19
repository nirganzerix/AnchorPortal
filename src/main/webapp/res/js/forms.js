var generateRequestObject = function(selectedReport, sendToEmail){
	var requestObject = {
			reportType : selectedReport,
			requestFields : [], 
			sendCopyToEmail : sendToEmail
	};
	
	var formFields = $('.formField');
	_.each(formFields, function(formField){
		requestObject.requestFields.push({key: formField.data('fieldName'), value: formField.value});
	});
		
	return requestObject;
};

var selectReport = function($this){
	var reportId = $this.data('report-id');
	$('#formContainer').empty();
	var formTemplate = _.template($('#_'+reportId+'Template').html());
	$('#formContainer').append(formTemplate({}));
	_.each($('.reportLink'), function(reportLink){
		$(reportLink).data('selected', 'false');
	});
	$this.data('selected', 'true');
};

var submitReport = function(){
	//determine which report is being submitted
	var selectedReport = _.filter($('.reportLink'), function(reportLink){
		return $(reportLink).data('selected') === true;
	});
	
	//generate request object
	var sendToEmail = $('#sendToEmail').checked ? $('#emailInput').value : null;
	var request = generateRequestObject(selectedReport, sendToEmail);
	
	if(request){
		//ajax call form controller
		$.ajax({
			url:'submitReport',
			method: 'POST',
			request: request
		});
	}
};

var bindEvents = function(){
	$('.reportLink').click(function(){
		selectReport($(this));
	});
	
	$('#sendToEmail').on('change', function(){
		if(this.checked){
			$('#emailInput').show();
		} else {
			$('#emailInput').hide();
		}
	});
	
	$('#submitReport').click(submitReport);
};

$(document).ready(function(){	
	bindEvents();
	$('#emailInput').hide();
});