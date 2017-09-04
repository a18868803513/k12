package com.k12.web;

import com.k12.domain.Tb_User;
import com.k12.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017-09-04.
 */
@Controller
public class UserLoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(String username,String password,HttpServletRequest request){
           Tb_User u= userService.login(username, password);
            if (u==null){
                request.setAttribute("message","用户不存在。。。");
                return "login";
            }else if(username.equals(u.getUsername())&&password.equals(u.getPassword())){

                if (u.getRole()==1){
                    request.setAttribute("userManager",u.getUsername());
                    return "ManagerIndex";
                }else{
                    request.setAttribute("user",u.getUsername());
                    return "index";
                }
            }else{
                request.setAttribute("message","账号或者密码错误请重新输入。。。");
                return "login";
            }
    }
}
