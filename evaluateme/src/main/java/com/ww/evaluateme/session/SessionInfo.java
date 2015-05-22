package com.ww.evaluateme.session;

import java.util.Date;
import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

public class SessionInfo
{
	private UserDetails userDetails;
	private Date birthdayDate;
	
	public UserDetails getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}
    public Date getBirthdayDate() {
        return birthdayDate;
    }
    public void setBirthdayDate(Date birthdayDate) {
        this.birthdayDate = birthdayDate;
    }
}
