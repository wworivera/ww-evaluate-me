package com.ww.evaluateme.models;

public class Summary {
    
	private String presentationID;
	private String presentationName;
	private String presenterName;
	private String company;
	private String RTimeInterest; //promedio de los rates de las personas
	private String startTime;
	private String endTime;
	private String evalTime; //to long, to short
	private String topic;
	
	public String getPresentationID() {
		return presentationID;
	}
	public void setPresentationID(String presentationID) {
		this.presentationID = presentationID;
	}
	
	public String getPresentationName() {
		return presentationName;
	}
	public void setPresentationName(String presentationName) {
		this.presentationName = presentationName;
	}
	public String getPresenterName() {
		return presenterName;
	}
	public void setPresenterName(String presenterName) {
		this.presenterName = presenterName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getRTimeInterest() {
		return RTimeInterest;
	}
	public void setRTimeInterest(String rTimeInterest) {
		RTimeInterest = rTimeInterest;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getEvalTime() {
		return evalTime;
	}
	public void setEvalTime(String evalTime) {
		this.evalTime = evalTime;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	
	
	
	
	
	
	
}
