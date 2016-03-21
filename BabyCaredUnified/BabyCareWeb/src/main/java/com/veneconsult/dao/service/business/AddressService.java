/**
 * 
 */
package com.veneconsult.dao.service.business;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.business.Address;
import com.veneconsult.dao.business.AddressDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */

@Component
@Transactional
public class AddressService extends EntityService<Address> implements AddressDao{

}
