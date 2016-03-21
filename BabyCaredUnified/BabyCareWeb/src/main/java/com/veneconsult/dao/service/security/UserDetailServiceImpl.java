/**
 * 
 */
package com.veneconsult.dao.service.security;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.security.Role;
import com.veneconsult.dao.security.UserDao;
import com.veneconsult.dao.service.parent.EntityService;




/**
 * @author Georman
 *
 */
@Component
@Transactional
@Service("UserDetailServiceImpl")
public class UserDetailServiceImpl  extends EntityService<com.veneconsult.common.security.User> implements UserDao, UserDetailsService {
	
protected final Log logger = LogFactory.getLog(getClass());


	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		com.veneconsult.common.security.User user=null;
		
		logger.info("loadUserByUsername username="+username);
		
		User userdetail=null;
		try {
			user=this.getUserByLogin(username);
			if(user==null){
				throw new UsernameNotFoundException("user name not found");
			}
			
			List<GrantedAuthority> authorities = 
                    buildUserAuthority(user.getRoles());

			userdetail= buildUserForAuthentication(user, authorities);
		} catch (Exception e) {
			e.printStackTrace();
			throw new UsernameNotFoundException("database error ");
		}
		return userdetail;
	}


	
	
	// Converts com.mkyong.users.model.User user to
		// org.springframework.security.core.userdetails.User
		private User buildUserForAuthentication(com.veneconsult.common.security.User user, 
			List<GrantedAuthority> authorities) {
			return new User(user.getUserName(), user.getPassword(), 
				user.getEnabled(), true, true, true, authorities);
		}

		private List<GrantedAuthority> buildUserAuthority(Set<Role> userRoles) {

			Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

			// Build user's authorities
			for (Role userRole : userRoles) {
				setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
			}

			List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

			return Result;
		}
		
		

		
		public com.veneconsult.common.security.User getUserByLogin(
				String login) throws Exception {
			com.veneconsult.common.security.User loginUser=null;
			List<com.veneconsult.common.security.User> users=this.getUserByLoginWithRoles(login);
			if(users!=null && !users.isEmpty()){
				loginUser=users.get(0);
			}
			
			return loginUser;
			
		}




		public List<com.veneconsult.common.security.User> getUserByLoginWithRoles(String login)
				throws Exception {

			
			List<com.veneconsult.common.security.User>users= (List<com.veneconsult.common.security.User>) getEntityManager().
					createQuery("from  User x inner join fetch x.roles where x.username  = ?1")
					.setParameter(1, login).getResultList();
			
			return users;
		}
	
	

}
