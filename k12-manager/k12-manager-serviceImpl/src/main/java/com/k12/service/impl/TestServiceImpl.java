package com.k12.service.impl;

import com.k12.dao.TestDao;
import com.k12.domain.Tb_Test;
import com.k12.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Service
@Scope("prototype")
@Transactional
public class TestServiceImpl implements TestService{
    @Autowired
    TestDao dao;
    @Override
    public void addTest(Tb_Test test) {
        dao.addTest(test);
    }
}

