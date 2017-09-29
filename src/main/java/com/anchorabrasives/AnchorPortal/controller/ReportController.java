package com.anchorabrasives.AnchorPortal.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anchorabrasives.AnchorPortal.model.ReportRequest;
import com.anchorabrasives.AnchorPortal.model.ReportResponse;
import com.anchorabrasives.AnchorPortal.service.EmailService;
import com.anchorabrasives.AnchorPortal.service.ReportToPDFService;
 
@Controller
public class ReportController {
	
	ReportToPDFService reportToPDFService = new ReportToPDFService();
	
	EmailService emailService = new EmailService();
	
	
	@RequestMapping(value="/submitReport", method = RequestMethod.POST)
		public void submitReport(ReportRequest reportRequest) {
			reportToPDFService.generateReportPDF();
			emailService.sendEmail();
		}
}