package com.k12.service.impl;

import com.k12.dao.UserDao;
import com.k12.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2017/9/1/001.
 */
@Service
@Transactional
@Scope("prototype")
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public boolean login(String username, String password) {
        if (userDao.login(username,password)>0){
            return true;
        }else {
            return false;
        }


    }
}
