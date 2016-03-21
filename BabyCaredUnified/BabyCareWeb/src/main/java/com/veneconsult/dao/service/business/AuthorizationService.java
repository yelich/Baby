/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.Authorization;
import com.veneconsult.dao.business.AuthorizationDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */

@Component
@Transactional
public class AuthorizationService extends EntityService<Authorization> implements AuthorizationDao {

}
