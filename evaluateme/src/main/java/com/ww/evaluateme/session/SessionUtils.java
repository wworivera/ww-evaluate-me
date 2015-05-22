package com.ww.evaluateme.session;

import javax.servlet.http.HttpSession;


public class SessionUtils
{
	public static SessionInfo getSessionInfo(HttpSession session)
	{
		SessionInfo sessionInfo = (SessionInfo) session.getAttribute("sessionInfo");
		
		return sessionInfo != null ? sessionInfo : new SessionInfo();
	}
	
	public static void setSessionInfo(HttpSession session, SessionInfo sessionInfo)
	{
		session.setAttribute("sessionInfo", sessionInfo);
	}
}
