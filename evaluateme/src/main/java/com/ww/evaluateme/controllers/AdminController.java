package com.ww.evaluateme.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ww.evaluateme.session.SessionInfo;
import com.ww.evaluateme.session.SessionUtils;
import com.ww.evaluateme.utils.exceptions.PymesGlobalException;

/**
 * Handles requests for the application home page.
 */
//@PreAuthorize("isAuthenticated()")
@Controller
@RequestMapping("/admin")
public class AdminController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(HttpSession session, Locale locale, Model model) {
//    	SessionInfo sessionInfo = new SessionInfo();
//    	sessionInfo.setCustomerIdentity(new CustomerIdentity());
//    	session.setAttribute("sessionInfo", sessionInfo);
//		
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
		
//		try {
//			Date birthdayDate = DateUtils.OTHER.parse("1966-07-08");
//		} catch (ParseException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		
		return "admin";
	}
}
