package com.veneconsult.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/main")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	
	public String dashboard() {
		logger.info("Welcome home! The client locale is {}.");
		return "dashboard";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/personalInformation", method = RequestMethod.GET)
	
	public String personalInformation() {
		logger.info("Welcome home! The client locale is {}.");
		return "personalInformation";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/childrenInformation", method = RequestMethod.GET)
	
	public String childrenInformation() {
		logger.info("Welcome home! The client locale is {}.");
		return "childrenInformation";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/medicationsInformation", method = RequestMethod.GET)
	
	public String medicationsInformation() {
		logger.info("Welcome home! The client locale is {}.");
		return "medicationsInformation";
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/activitesInformation", method = RequestMethod.GET)
	
	public String activitesInformation() {
		logger.info("Welcome home! The client locale is {}.");
		return "activitesInformation";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/schoolInformation", method = RequestMethod.GET)
	
	public String schoolInformation() {
		logger.info("Welcome home! The client locale is {}.");
		return "schoolInformation";
	}
	
}
