/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.Relationship;
import com.veneconsult.dao.business.RelationshipDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class RelationshipService extends EntityService<Relationship> implements RelationshipDao {

}
