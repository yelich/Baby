package com.veneconsult.dao.service.security;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.security.Role;
import com.veneconsult.dao.security.RoleDao;
import com.veneconsult.dao.service.parent.EntityService;


@Component
@Transactional
public class RoleService extends EntityService<Role> implements RoleDao{

}
