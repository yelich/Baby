package com.veneconsult.dao.service.business;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.veneconsult.common.business.Account;
import com.veneconsult.dao.business.AccountDao;
import com.veneconsult.dao.service.parent.EntityService;


@Component
@Transactional
public class AccountService extends EntityService<Account> implements AccountDao {

}
