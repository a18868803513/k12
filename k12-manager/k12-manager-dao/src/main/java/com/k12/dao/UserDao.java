package com.k12.dao;

import com.k12.domain.Tb_Student;
import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * Created by Administrator on 2017/9/1/001.
 */
public interface UserDao {
    //登录
    @Select("select * from Tb_User where username=#{arg0} and password=#{arg1}")
    Tb_User login(String username,String password);

    //注册
    @Select("select * from Tb_user where username=#{username}")
    Tb_User selectUser(String username);
    @Insert("insert into Tb_User (username,password,registertime,tel,email) values(#{username},#{password},now(),#{tel},#{email})")
    int register(Tb_User user);

    //用户更改登录信息
    @Update("update Tb_User set password=#{password},tel=#{tel},email=#{email} where username=#{username}")
    int useredit(Tb_User user);

   //用户编辑信息
    @Update("update  Tb_Student set nickname=#{nickname},age=#{age},sex=#{sex},school=#{school},grade=#{grade},birthday=#{birthday} where uid=#{uid}")
    int userinfo(Tb_Student student);
    @Insert("insert into Tb_Student (uid)values(#{i})")
    int adduserinfo(int i);

}

