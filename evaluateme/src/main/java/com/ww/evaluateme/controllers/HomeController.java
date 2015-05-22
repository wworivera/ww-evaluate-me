package com.ww.evaluateme.controllers;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ww.evaluateme.session.SessionInfo;
import com.ww.evaluateme.session.SessionUtils;

/**
 * Handles requests for the application home page.
 */
//@PreAuthorize("isAuthenticated()")
@Controller
@RequestMapping("/home")
public class HomeController {
	
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
		// TODO: Later on if other validations are added by businessline, crate a hashmap<String, boolean> validationMap.
		// String = viewName, boolean = was already validated. When changing plans you need to pass the values to the new map
		// and check if there are any validations as false.
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
		if(sessionInfo.getUserDetails() == null)
		{
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			UserDetails user = new User(authentication.getName(), authentication.getCredentials().toString(), authentication.getAuthorities());
			sessionInfo.setUserDetails(user);
			SessionUtils.setSessionInfo(session, sessionInfo);
		}
//		GrantedAuthority var = new  GrantedAuthority("ROLE_ADMIN");
		if (sessionInfo.getUserDetails().getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ADMIN")))
		{
			return "redirect:admin";
		}
		else
		{
			return "redirect:customer";
		}
		
//		return "home";
	}
}
