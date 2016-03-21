/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.School;
import com.veneconsult.dao.business.SchoolDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class SchoolService extends EntityService<School> implements SchoolDao {

}
