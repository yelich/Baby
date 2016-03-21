package org.slevin.tests;

import static org.junit.Assert.assertEquals;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.veneconsult.common.business.Account;
import com.veneconsult.common.security.Role;
import com.veneconsult.common.security.User;
import com.veneconsult.dao.business.AccountDao;
import com.veneconsult.dao.security.RoleDao;
import com.veneconsult.dao.security.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/com/veneconsult/service/business/persistenceTests-context.xml" })
public class persistenceTests {

	@Autowired
	UserDao accountDao;

	@Autowired
	RoleDao roleDao;
	
	@PersistenceContext(unitName="persistenceUnit")
	EntityManager manager;
	
	//@Autowired
	//RestTemplate restTemplate;
	
	//private static final String BASE_URL = "http://localhost:8080/spring-security-tutorial/";  
	


	@Test
	@Transactional
	public void testDaoImpl() throws Exception {
		User user = new User();
		user.setEmail("mail@google.com");
		user.setPassword("password");
		user.setUserName("user");
		user.setEnabled(true);
		user.setCreatedBy("admin");
		user.setCreatedDt(new Date());
		Role role = new Role();
		role.setCreatedBy("admin");
		role.setRole("ROLE_ADMIN");
		role.setCreatedDt(user.getCreatedDt());
		role.setUser(user);
		//roleDao.persist(role);
		user.getRoles().add(role);
	    accountDao.persist(user);
		assertEquals(1, accountDao.count());
		//assertEquals(1, roleDao.count());
	}
	

	@Test
	@Transactional
	public void testCheckRoleInUser() throws Exception{
		
		com.veneconsult.common.security.User loginUser=null;
		
		String username="username";
		
		List<com.veneconsult.common.security.User>users= (List<com.veneconsult.common.security.User>)  manager.createQuery("from  User x inner join fetch x.roles where x.username  = ?1").setParameter(1, username).getResultList();
		if(!users.isEmpty())
		    loginUser=users.get(0);
		
		Assert.assertNotNull(loginUser);
		


		
	}
	

}
