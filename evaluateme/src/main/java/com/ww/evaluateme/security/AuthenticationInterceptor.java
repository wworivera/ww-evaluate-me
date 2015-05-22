package com.ww.evaluateme.security;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class AuthenticationInterceptor extends HandlerInterceptorAdapter
{
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
//	{
//		// either exclude css and js or add a map of the page names...
//		String uri = request.getRequestURI();
////		List<String> views = new ArrayList<String>();
////		for (ViewsEnum view : ViewsEnum.values())
////		{
////			views.add(view.getViewValue());
////		}
//		
//		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request.getSession());
//		UserDetails user = sessionInfo.getUserDetails();
//		//User userData = (User) request.getSession().getAttribute("LOGGEDIN_USER");
//		if(user == null)
//		{
//		if(!uri.endsWith("login") && !uri.endsWith("j_spring_security_logout") && !uri.endsWith("home") 
//				&& !uri.contains("session") && !uri.contains("resources") && !uri.contains("js") && !uri.contains("tag"))
//		{
//				response.sendRedirect("login");
//				return false;
//		}
//		}
//		
//		return true;
//	}
	
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception
//	{
//		// either exclude css and js or add a map of the page names...
//		String uri = request.getRequestURI();
////		List<String> views = new ArrayList<String>();
////		for (ViewsEnum view : ViewsEnum.values())
////		{
////			views.add(view.getViewValue());
////		}
//		
//		if(!uri.endsWith("login") && !uri.endsWith("j_spring_security_logout") && !uri.endsWith("home") 
//				&& !uri.contains("session") && !uri.contains("resources") && !uri.contains("js") && !uri.contains("tag"))
//		{
//			SessionInfo sessionInfo = SessionUtils.getSessionInfo(request.getSession());
//			UserDetails user = sessionInfo.getUserDetails();
//			//User userData = (User) request.getSession().getAttribute("LOGGEDIN_USER");
//			if(user == null)
//			{
//				response.sendRedirect("login");
//				//return false;
//			}
//		}
//		
//		//return true;
//	}
}
