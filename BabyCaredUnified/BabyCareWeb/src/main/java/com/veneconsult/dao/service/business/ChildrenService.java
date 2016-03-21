/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.Children;
import com.veneconsult.dao.business.ChildrenDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class ChildrenService extends EntityService<Children> implements ChildrenDao  {

}
