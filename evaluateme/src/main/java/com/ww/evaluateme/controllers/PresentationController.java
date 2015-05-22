package com.ww.evaluateme.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.ww.evaluateme.models.Feedback;
import com.ww.evaluateme.models.Summary;
import com.ww.evaluateme.session.SessionInfo;
import com.ww.evaluateme.session.SessionUtils;

/**
 * Handles requests for the application home page.
 */
//@PreAuthorize("isAuthenticated()")
@Controller
@RequestMapping("/presentation")
public class PresentationController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(HttpSession session, Locale locale, Model model) {

		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
		
		if(sessionInfo.getSummary()!=null) {
			model.addAttribute("summary",sessionInfo.getSummary());
		}
		else {
			Summary customSumm = new Summary();
			Feedback feed = new Feedback();
			
			//summary
			customSumm.setCompany("Wovenware");
			customSumm.setPresentationName("Evaluate.Me");
			customSumm.setPresenterName("Luis Soto");
			//customSumm.setTopic("Our New Project");
			
			
			//feedback
			feed.setCurrentTopic("Our New Project");
			//feed.setQuestion("Do you like the topic?");
			feed.setId(0);
			
			
			
			
			
			model.addAttribute("summary", customSumm);
			model.addAttribute("feedback", feed);
			
			sessionInfo.setSummary(customSumm);
			sessionInfo.setFeedback(feed);
			
			SessionUtils.setSessionInfo(session, sessionInfo);
		}
		

		
		
		return "presentation";
	}
    public String feedback(@ModelAttribute("feedback") Feedback feedback, HttpServletRequest request, HttpSession session, Locale locale, Model model){

		SessionInfo sessionInfo = SessionUtils.getSessionInfo(session);
		
		sessionInfo.setCurrentTopicFeedback(feedback.getRate());
		sessionInfo = feedback.avgFeedback(feedback.getRate(),sessionInfo);
		
		SessionUtils.setSessionInfo(session, sessionInfo);
		
			

		
		return "presentation";
	}
}
