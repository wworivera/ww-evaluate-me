package com.ww.evaluateme.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
 
    public User loadUserByUsername(final String username) {
        User user = new User();
        
//        List<String> hostList = new ArrayList<String>();
//        List<String> roleList = new ArrayList<String>();
//        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
//        boolean isActiveDirectoryExternal = false;
//        String userName = auth.getName().toString(); //login.getUsername(); //request.getParameter("userName");
//        String password = auth.getCredentials().toString(); //login.getPassword(); //request.getParameter("password");
//        
//        hostList.add("10.13.31.46"); //environment.getAdExternalHosts();
//        for(int i = 0; i < hostList.size(); i++)
//        {
//      	  // TODO: add encryption thing to the ldap password, like in COPS
//            String host = (String)hostList.get(i);
//            String context = "DC=prtext,DC=local";//environment.getAdExternalContext();
//            String bindDN = "CN=copsAdmin,OU=Users,OU=COPS,OU=APPS,DC=prtext,DC=local";//environment.getAdExternalAdminBind();
//            String bindPW = "20112012"; //AdProcessAccount.retrievePassword(conn, environment.getAdExternalAdminBind());
//            int port = 636;//environment.getActiveDirectorySslPort();
//            boolean adLogged = false;
//            try
//            {
//                adLogged = ActiveDirectoryUtils.authenticate(host, port, bindDN, bindPW, context, userName, password);
//                if(adLogged)
//                {
//                    roleList = ActiveDirectoryUtils.getUserGroups(host, port, "CN=copsAdmin,OU=Users,OU=COPS,OU=APPS,DC=prtext,DC=local", bindPW, context, userName);
//                    isActiveDirectoryExternal = !roleList.isEmpty();
//                    
//                    for(String role : roleList)
//                    {
//                  	  grantedAuthorities.add(new SimpleGrantedAuthority(role));
//                    }
//                    
//                    String desc = (new StringBuilder("Exteral user: ")).append(userName).append(" logged, roleList: ").append(roleList.toString()).toString();
////                    AuditLog.createLog(com.claropr.cops.frontend.util.db.AuditLog.LogLevel.INFO, "Login.executeLogin()", com.claropr.cops.frontend.util.db.Log.AppStatus.INFO, (new StringBuilder("Internal AD: ")).append(desc).toString());
//                }
//            }
//            catch(LDAPException e)
//            {
//          	  
//            }
//        }
        
        user.setFirstName("firstName");
        user.setLastName("lastName");
        user.setUsername("user");
        user.setPassword("1111");
        Role r = new Role();
        r.setName("ROLE_USER");
        List<Role> roles = new ArrayList<Role>();
        roles.add(r);
        user.setAuthorities(roles);
        return user;
    }
}
