/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.Pharmacy;
import com.veneconsult.dao.business.PharmacyDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class PharmacyService extends EntityService<Pharmacy> implements PharmacyDao {

}
