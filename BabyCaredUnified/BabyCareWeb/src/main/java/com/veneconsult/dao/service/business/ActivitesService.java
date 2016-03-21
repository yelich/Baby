/**
 * 
 */
package com.veneconsult.dao.service.business;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.business.Activites;
import com.veneconsult.dao.business.ActivitesDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */

@Component
@Transactional
public class ActivitesService extends EntityService<Activites> implements ActivitesDao {

}
