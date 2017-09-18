package com.k12.service.impl;

import com.k12.dao.UserDao;
import com.k12.domain.Tb_Student;
import com.k12.domain.Tb_User;
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
    private UserDao userDao;



    @Override
    public Tb_User login(String username, String password) {
        Tb_User u = userDao.login(username, password);
        if (u == null) {
            return null;

        }else {
            return u;
        }
    }

    @Override
    public Tb_User selectUser(String username) {
        Tb_User i=userDao.selectUser(username);
        return i;
    }

    @Override
    public boolean register(Tb_User user) {
     return   userDao.register(user)>0?true:false;

    }

    @Override
    public boolean useredit(Tb_User user) {
        int i = userDao.useredit(user);
        return i>0?true:false;
    }

    @Override
    public boolean adduserinfo(int id) {
        return userDao.adduserinfo(id)>0?true:false;
    }

    @Override
    public boolean userinfo(Tb_Student student) {
        return userDao.userinfo(student)>0?true:false;
    }
}
