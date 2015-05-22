package com.ww.evaluateme.security.utils;

import org.springframework.security.core.GrantedAuthority;

public class GrantedAuthorityImpl implements GrantedAuthority
{
	private static final long serialVersionUID = 2320869342929825921L;
	private String authority;
	
	public String getAuthority() {
		return authority;
	}
	
	public GrantedAuthorityImpl(String authority)
	{
		this.authority = authority;
	}
}
