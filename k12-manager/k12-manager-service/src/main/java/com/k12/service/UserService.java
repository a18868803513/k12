package com.k12.service;

import com.k12.domain.Tb_Student;
import com.k12.domain.Tb_User;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserService {
    //登录
    Tb_User login(String username,String password);
    //判断是否存在用户名
    Tb_User selectUser(String username);
    //注册
    boolean register(Tb_User user);
    //修改用户的登录信息
    boolean useredit(Tb_User user);
    //注册时添加个人信息表里面的uid
    boolean adduserinfo(int id);
    //更改个人信息
    boolean userinfo(Tb_Student student);
}
