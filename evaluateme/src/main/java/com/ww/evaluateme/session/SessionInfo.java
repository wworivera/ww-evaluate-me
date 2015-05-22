package com.ww.evaluateme.session;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.ww.evaluateme.models.Feedback;
import com.ww.evaluateme.models.Summary;

public class SessionInfo
{
	private UserDetails userDetails;
	private Date birthdayDate;
	private Summary summary;
	private Feedback feed;
	private int currentTopicFeedback = 0;
	private Double avgFeedback = 0.0;
	private ArrayList<Integer> feedbackList = new ArrayList<Integer>();
	
	
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
    
    public void setSummary(Summary summary) {
        this.summary = summary;
    }
    
    public Summary getSummary() {
        return summary;
    }
	public Feedback getFeed() {
		return feed;
	}
	public void setFeedback(Feedback feed) {
		this.feed = feed;
	}
	public int getCurrentTopicFeedback() {
		return currentTopicFeedback;
	}
	public void setCurrentTopicFeedback(int currentTopicFeedback) {
		this.currentTopicFeedback = currentTopicFeedback;
	}
	public Double getAvgFeedback() {
		return avgFeedback;
	}
	public void setAvgFeedback(Double avgFeedback) {
		this.avgFeedback = avgFeedback;
	}
	public ArrayList<Integer> getFeedbackList() {
		return feedbackList;
	}
	public void setFeedbackList(ArrayList<Integer> feedbackList) {
		this.feedbackList = feedbackList;
	}
	
	
	
	
	
	
    
    
}
