package com.ww.evaluateme.security.crypto;

import org.springframework.security.authentication.dao.SaltSource;
import org.springframework.security.core.userdetails.UserDetails;

public class SaltSourceImpl implements SaltSource
{
	public Object getSalt(UserDetails user) {
		return new String("0293861039372539281056103");
	}
}
