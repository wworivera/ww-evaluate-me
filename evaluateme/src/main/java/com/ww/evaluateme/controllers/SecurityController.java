package com.ww.evaluateme.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ww.evaluateme.models.Login;

@Controller
@RequestMapping("/security")
public class SecurityController
{
	@RequestMapping(value = 
		{"/{session}/{username}/{role}", "/login/{session}/{username}/{role}"}, method = {RequestMethod.GET, RequestMethod.HEAD})
	public String login(
			@PathVariable("session") String session, 
			@PathVariable("username") String username, 
			@PathVariable("role") String role,
			HttpServletRequest request)
	{
		if (!StringUtils.hasLength(session)
				|| !StringUtils.hasLength(username)
				|| !StringUtils.hasLength(role))
		{
			return "security/denied";
		}
		
		return "redirect:/customer";
	}
	
//	@RequestMapping(value = 
//		{"/{session}/{username}/{role}/{queue}", "/login/{session}/{username}/{role}/{queue}"}, method = RequestMethod.GET)
//	public String login(
//			@PathVariable("session") String session, 
//			@PathVariable("username") String username, 
//			@PathVariable("role") String role,
//			@PathVariable("queue") String queue,
//			HttpServletRequest request)
//	{
//		if (!StringUtils.hasLength(session)
//				|| !StringUtils.hasLength(username)
//				|| !StringUtils.hasLength(role))
//		{
//			return "security/denied";
//		}
//		
//		return (StringUtils.hasText(queue)
//			? "redirect:/search/" + queue
//			: "security/denied"
//		);
//	}
	
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.HEAD})
	public String home(HttpServletRequest request, HttpServletResponse response, HttpSession session, Locale locale, Model model) {
		
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
		
		return "security/login";
	}
	
	@RequestMapping(value = "/failed", method = RequestMethod.GET)
	public String failed()
	{
		return "security/login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout()
	{
		return "security/logout";
	}
	
	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String denied()
	{
		return "security/denied";
	}
	
	@RequestMapping(value = "/notFound", method = RequestMethod.GET)
	public String notFound()
	{
		return "security/notFound";
	}
	
	@RequestMapping(value = "/serverError", method = RequestMethod.GET)
	public String serverError()
	{
		return "security/serverError";
	}
}
