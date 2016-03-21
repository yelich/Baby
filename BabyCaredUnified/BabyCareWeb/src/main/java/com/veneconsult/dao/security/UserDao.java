/**
 * 
 */
package com.veneconsult.dao.security;

import java.util.List;

import com.veneconsult.common.security.User;
import com.veneconsult.dao.entityparent.EntityDao;

/**
 * @author Georman
 *
 */
public interface UserDao extends EntityDao<User>{
	
	/**
	 * Method that search a user in a storage using login string.
	 * If the user does not exit it return a null object
	 * @param login
	 * @return
	 * @throws Exception 
	 */
	public User getUserByLogin(String login) throws Exception;
	
	public List<User> getUserByLoginWithRoles(String login) throws Exception;

}
