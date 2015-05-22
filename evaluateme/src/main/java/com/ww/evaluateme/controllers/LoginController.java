package com.ww.evaluateme.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ww.evaluateme.models.Login;

/**"", "/", 
 * Handles requests for the application home page.
 */
//@PreAuthorize("isFullyAuthenticated()")
@Controller
@RequestMapping({"/login", "/j_spring_security_check"})
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(HttpServletRequest request, HttpServletResponse response, HttpSession session, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("login", new Login());
		model.addAttribute("sessionId", session.getId());
		
//		boolean newSession = session.isNew();
//		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
//		if(sessionInfo.getUserDetails() != null)
//		{
//			session.invalidate();
//		}
		
		return "login";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String error(HttpServletRequest request, HttpServletResponse response, HttpSession session, Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		CustomAuthenticationProvider auth = new CustomAuthenticationProvider();
//		Authentication authentication;
//		auth.authenticate(authentication);
//		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("login", new Login());
		model.addAttribute("sessionId", session.getId());
		
//		boolean newSession = session.isNew();
//		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
//		if(sessionInfo.getUserDetails() != null)
//		{
//			session.invalidate();
//		}
		
		return "redirect:login";
	}
}
