package com.k12.dao;

import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Select;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserDao {
    @Select("select * from Tb_User where username=#{arg0} and password=#{arg1}")
    Tb_User login(String username,String password);
}
