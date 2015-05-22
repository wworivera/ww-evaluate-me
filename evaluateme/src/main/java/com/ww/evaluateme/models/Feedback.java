package com.ww.evaluateme.models;

public class Feedback {
	
	private int id;
	private String question;
	private int rate;
	private String currentTopic;
	
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
	
	

}
