package com.k12.dao;

import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserDao {
    @Select("select * from Tb_User where username=#{arg0} and password=#{arg1}")
    Tb_User login(String username,String password);
    @Select("select * from Tb_user where username=#{username}")
    Tb_User selectUser(String username);
    @Insert("insert into Tb_User (username,password,registertime,tel,email) values(#{username},#{password},now(),#{tel},#{email})")
    int register(Tb_User user);
    @Update("update Tb_User set password=#{password},tel=#{tel},email=#{email} where username=#{username}")
    int useredit(Tb_User user);
}

