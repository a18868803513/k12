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
                    request.setAttribute("userManager",u);
                    return "ManagerIndex";
                }else{
                    request.getSession().setAttribute("user",u);
                    return "index";
                }
            }else{
                request.setAttribute("message","账号或者密码错误请重新输入。。。");
                return "login";
            }
    }
    @RequestMapping("/userRegister")
    public String register(Tb_User user,HttpServletRequest request){
        boolean u = userService.selectUser(user.getUsername());
       if (!u){
            request.setAttribute("registermessage","用户名已将存在！");
           return "register";
       }else{

            boolean b=userService.register(user);
           if(b){
               return "login";
           }else{
               request.setAttribute("registermessage","注册失败！");
               return "register";
           }
       }
    }

}
