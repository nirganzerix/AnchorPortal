package com.anchorabrasives.AnchorPortal.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anchorabrasives.AnchorPortal.model.ReportRequest;
import com.anchorabrasives.AnchorPortal.model.ReportResponse;
 
@Controller
public class ReportController {
	@RequestMapping(value="/submitReport", method = RequestMethod.POST)
		public ReportResponse submitReport(ReportRequest reportRequest) {
			return new ReportResponse();
		}
}