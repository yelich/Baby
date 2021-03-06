/**
 * 
 */
package org.slevin.tests;

import java.util.Date;
import java.util.List;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.business.Address;
import com.veneconsult.common.business.Children;
import com.veneconsult.common.business.Email;
import com.veneconsult.common.business.Parent;
import com.veneconsult.common.business.Phone;
import com.veneconsult.common.business.RelationShipDefinition;
import com.veneconsult.common.business.Relationship;
import com.veneconsult.common.business.School;
import com.veneconsult.dao.business.ActivitesDao;
import com.veneconsult.dao.business.AddressDao;
import com.veneconsult.dao.business.AuthorizationDao;
import com.veneconsult.dao.business.ChildrenDao;
import com.veneconsult.dao.business.EmailDao;
import com.veneconsult.dao.business.FeedsDao;
import com.veneconsult.dao.business.MedicinesDao;
import com.veneconsult.dao.business.ParentDao;
import com.veneconsult.dao.business.PharmacyDao;
import com.veneconsult.dao.business.PhoneDao;
import com.veneconsult.dao.business.RelationshipDao;
import com.veneconsult.dao.business.SchoolDao;
import com.veneconsult.dao.business.TopicalProductDao;
import com.veneconsult.dao.business.TransportationDao;

/**
 * @author Yelitza
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/com/veneconsult/service/business/persistenceTests-context.xml" })
public class BusinessTest {
	
//	@Autowired
//	private ActivitesDao activitiesdao;
//	
//	
//	@Autowired
//	private AddressDao addressdao;
//	
//	@Autowired
//	private AuthorizationDao autorizacion;
	
	@Autowired
	private ChildrenDao childrendao;
	
//	@Autowired
//	private EmailDao emaildao;
//	
//	@Autowired
//	private FeedsDao feeddao;
//	
//	@Autowired
//	private MedicinesDao medicinedao;
//		
//	@Autowired
//	private ParentDao parentdao;
//	
//	@Autowired
//	private PharmacyDao pharmacydao;
//	
//	@Autowired
//	private PhoneDao phonedao;
//		
//	@Autowired
//	private RelationshipDao relationshipdao;
		
	@Autowired
	private SchoolDao schooldao;
	
//	@Autowired
//	private TopicalProductDao topicalproduct;
//	
//	
//	@Autowired
//	private TransportationDao transportacion;
	
	@Test
	@Transactional
	public void saveSchoolTest() throws Exception{
		
		School school=new School();
		school.setCreatedBy("admin");
		school.setCreatedDt(new Date());
		school.setCustomCode("0001");
		Address address=this.getSchoolAddres();
		school.setAddress(address);
		Email email=this.getEmailForSchool();
		school.getEmail().add(email);
		email.setSchool(school);
		Phone phone=this.getPhoneForSchool();
		school.getPhone().add(phone);
		school.setGrade(7);
		school.setLevel("three");
		school.setName("escuela nueva");
		school.setNameprincipal("yelitza chacon");
		
		schooldao.persist(school);
		
		Assert.assertEquals(1, schooldao.count());
		
	}
	
	
	@Test
	@Transactional
	public void saveChildrenTest() throws Exception{
		Children child=new Children();
		child.setCreatedBy("admin");
		child.setCreatedDt(new Date());
		child.setCustomCode("012922");
		child.setFirstname("Victoria");
		child.setLastname("Calderon");
		child.setBirth(new Date());
		child.setSex("Masculine");
		child.getEmail().add(this.getEmailForSchool());
		child.getPhone().add(this.getPhoneForSchool());
		child.getParent().add(this.getParentForSchool());
		List<School> schools=(List<School>) this.schooldao.findByProperty("customCode", "0001");
		School school=null;
		if(schools!=null&&!schools.isEmpty()){
			school=schools.get(0);
		}else{
			school=this.getSchoolGeneric();
		}
		
		child.setSchool(school);
		child.getParent().add(getParentForSchool());
		
        childrendao.persist(child);
		
		Assert.assertEquals(1, childrendao.count());
	}

	private School getSchoolGeneric() {
		School result=new School();
		result.setCreatedBy("admin");
		result.setCreatedDt(new Date());
		result.setCustomCode("012922");
		result.setLevel("primary");
		result.setGrade(8);
		result.setName("name");
		result.setAddress(this.getSchoolAddres());
		result.setNameprincipal("Benito Perez");
	
		return result;
	}


	private Parent getParentForSchool() {
		Parent result=new Parent();
		result.setCreatedBy("admin");
		result.setCreatedDt(new Date());
		result.setCustomCode("02357");
		result.setFirstname("Georman");
		result.setLastname("Calderon");
		result.setNumlicense("34568899");
		result.getEmail().add(this.getEmailForSchool());
		result.getPhone().add(this.getPhoneForSchool());
		result.getAddress().add(this.getSchoolAddres());
		result.setRelationship(RelationShipDefinition.FATHER.getRelationShip());
		result.setPlaceemploy("smartmatic");
		
		return result;
	}





	private Phone getPhoneForSchool() {
		Phone phone=new Phone();
		phone.setCreatedBy("admin");
		phone.setCreatedDt(new Date());
		phone.setCustomCode("0001");
		phone.setNumber(1231112);
		phone.setDescription("telefono personal");
		return phone;
	}

	private Email getEmailForSchool() {
		Email result=new Email();
		result.setCreatedBy("admin");
		result.setCreatedDt(new Date());
		result.setCustomCode("0001");
		result.setAddressemail("georve@gmail.com");
		return result;
	}

	private Address getSchoolAddres() {
		Address result=new Address();
		result.setAddress("331 main street miami");
		result.setCity("miami");
		result.setState("Florida");
		result.setCreatedBy("admin");
		result.setCreatedDt(new Date());
		result.setCustomCode("0010");	
		result.setZipcode("192322");
		return result;
	}
	
}
	