/**
 * 
 */
package com.veneconsult.dao.service.business;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.veneconsult.common.business.TopicalProduct;
import com.veneconsult.dao.business.TopicalProductDao;
import com.veneconsult.dao.service.parent.EntityService;

/**
 * @author Yelitza
 *
 */
@Component
@Transactional
public class TopicalProService extends EntityService<TopicalProduct> implements TopicalProductDao {

}
