package com.k12.dao;

import org.apache.ibatis.annotations.Select;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserDao {
    @Select("select * from User where username=#{arg0} and password=#{arg1}")
    int login(String username,String password);
}
