/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.Feeds;
import com.veneconsult.dao.business.FeedsDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class FeedsService extends EntityService<Feeds> implements FeedsDao{

}
