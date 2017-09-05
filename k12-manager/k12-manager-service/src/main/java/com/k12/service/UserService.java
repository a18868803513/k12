package com.k12.service;

import com.k12.domain.Tb_User;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserService {
    Tb_User login(String username,String password);
}
