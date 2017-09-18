package com.k12.realm;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.k12.domain.Tb_Permission;
import com.k12.domain.Tb_Role;
import com.k12.domain.Tb_User;
import com.k12.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


//获取用户的角色、权限和认证信息
public class UserRealm extends AuthorizingRealm{
    @Autowired
    private UserService userService;



    //返回用户的角色和权限信息
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //获取当前的登录的名称
        String username=(String) principals.getPrimaryPrincipal();

        //创建记录信息的对象
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        //获取当前用户的角色和权限
        List<Tb_Role> list1=userService.selectRByUn(username);
        List<Tb_Permission> list2=userService.selectPByUn(username);
        Set<String> roles=new HashSet<>();
        for(Tb_Role r:list1){
            roles.add(r.getName());
        }
        //设置当前用户的角色名称
        info.setRoles(roles);
        Set<String> permissions=new HashSet<>();
        for(Tb_Permission p:list2){
            permissions.add(p.getName());
        }
        //设置当前用户的所有权限
        info.setStringPermissions(permissions);


        return info;
    }

    //返回用户的认证信息
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取用户名称
        String username=(String) token.getPrincipal();
        UsernamePasswordToken t1=(UsernamePasswordToken) token;
        System.out.println("token："+t1.getUsername());
        System.out.println("认证信息："+username);
        Tb_User user=userService.selectByName(username);
        if(user==null){
            throw new UnknownAccountException("亲，账号不存在");
        }
        System.out.println("认证信息：账号："+username+"------>"+user.getPassword());
        //实例化认证信息对象，参数说明：1、用户名2、密码、3Realm的名称
        SimpleAuthenticationInfo info =new SimpleAuthenticationInfo(username,user.getPassword(),getName());

        return info;
    }

}
