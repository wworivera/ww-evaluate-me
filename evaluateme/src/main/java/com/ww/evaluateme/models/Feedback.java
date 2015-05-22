package com.ww.evaluateme.models;

import java.util.ArrayList;

import com.ww.evaluateme.session.SessionInfo;
import com.ww.evaluateme.session.SessionUtils;

public class Feedback {
	
	private int id;
	private String question;
	private int rate;
	private String currentTopic;
    protected Double avg = 0.0;
    
	protected ArrayList<Integer> feedbackList = new ArrayList<Integer>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getCurrentTopic() {
		return currentTopic;
	}
	public void setCurrentTopic(String currentTopic) {
		this.currentTopic = currentTopic;
	}
	
	
	public SessionInfo avgFeedback(int newFeedback, SessionInfo sessionInfo) {
		
		
		
		Double sumValues = 0.0;
		
		feedbackList = sessionInfo.getFeedbackList();
		
		feedbackList.add(newFeedback);
		
		for(int i = 0;i<feedbackList.size();i++) {
			
			sumValues+=feedbackList.get(i);
			
		}
		
		avg = sumValues/feedbackList.size();
		
		
		sessionInfo.setAvgFeedback(avg);
		sessionInfo.setFeedbackList(feedbackList);
		
		return sessionInfo;
	}
	
	

}
