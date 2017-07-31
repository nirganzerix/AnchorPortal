package com.anchorabrasives.AnchorPortal.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class WebController {
	@RequestMapping(value="/", method = RequestMethod.GET)
		public String root() {
			return "redirect:/login";
		}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	   public String index() {
	      return "login";
	   }
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String home() {
	      return "home";
	   }
	@RequestMapping(value = "/submitAForm", method = RequestMethod.GET)
	   public String form() {
	      return "form";
	   }
	@RequestMapping(value = "/quote", method = RequestMethod.GET)
	   public String quote() {
	      return "quote";
	   }
	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	   public String sale() {
	      return "sale";
	   }

}