package com.ww.evaluateme.security;

public class LoginException extends RuntimeException
{
	private static final long serialVersionUID = -993303869617111065L;

	private String code;
	private String severity;
	private String style;
	private String source;
	private String language;
	private String name;
	private String description;

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getSeverity() {
		return severity;
	}
	public void setSeverity(String severity) {
		this.severity = severity;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LoginException(String code, String severity, String style, 
			String source, String language, String name, 
			String description)
	{
		this.code = code;
		this.severity = severity;
		this.style = style;
		this.source = source;
		this.language = language;
		this.name = name;
		this.description = description;
	}
}
