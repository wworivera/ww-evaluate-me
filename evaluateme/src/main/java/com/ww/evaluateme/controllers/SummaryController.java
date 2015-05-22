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

import com.ww.evaluateme.models.Summary;
import com.ww.evaluateme.session.SessionInfo;
import com.ww.evaluateme.session.SessionUtils;

/**
 * Handles requests for the application home page.
 */
//@PreAuthorize("isAuthenticated()")
@Controller
@RequestMapping("/summary")
public class SummaryController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(HttpSession session, Locale locale, Model model) {

		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
		
		Summary customSumm = new Summary();
		
		
		customSumm.setCompany("Wovenware");
		customSumm.setPresentationName("Evaluate.Me");
		customSumm.setPresenterName("Luis Soto");
		customSumm.setTopic("Our New Project");
		
		model.addAttribute("summary", customSumm);
		
		sessionInfo.setSummary(customSumm);
		
		
		
		
		
		

		
		
		return "redirect:presentation";
	}
}
