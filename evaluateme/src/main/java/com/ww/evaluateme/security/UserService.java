package com.ww.evaluateme.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserService implements UserDetailsService
{ 
    @Autowired
    private UserDao userDao;
 
    
    public User loadUserByUsername(final String userName) throws UsernameNotFoundException {
        return userDao.loadUserByUsername(userName);
    }
}
