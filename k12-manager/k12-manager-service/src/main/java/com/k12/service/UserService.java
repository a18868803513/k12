package com.k12.service;

import com.k12.domain.Tb_Permission;
import com.k12.domain.Tb_Role;
import com.k12.domain.Tb_User;

import java.util.List;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserService {
    Tb_User login(String username,String password);
    Tb_User selectUser(String username);
    boolean register(Tb_User user);
    boolean useredit(Tb_User user);
    Tb_User selectByName(String username);
    List<Tb_Role> selectRByUn(String username);
    List<Tb_Permission> selectPByUn(String username);
}
