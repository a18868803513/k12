package com.k12.dao;

import com.k12.domain.Tb_Permission;
import com.k12.domain.Tb_Role;
import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

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
    @Select("select * from tb_user where username=#{username}")
    @ResultType(Tb_User.class)
    Tb_User selectByName(String username);

    @Select("select r.* from tb_role r left join tb_userrole ur on r.id=ur.rid left join tb_user u on u.id=ur.uid where u.username=#{username}")
    @ResultType(Tb_Role.class)
    List<Tb_Role> selectRByUn(String username);

    @Select("select p.* from tb_permission p left join tb_rolepermission rp on p.id=rp.pid left join tb_role r on rp.rid=r.id left join tb_userrole ur on r.id=ur.rid left join tb_user u on u.id=ur.uid where u.username=#{username}")
    @ResultType(Tb_Permission.class)
    List<Tb_Permission> selectPByUn(String username);
}

