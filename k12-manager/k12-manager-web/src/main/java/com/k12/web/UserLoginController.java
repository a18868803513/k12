package com.k12.web;

import com.k12.domain.Tb_User;
import com.k12.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
    @ResponseBody
    public void register(Tb_User user,HttpServletResponse response) throws IOException {
        Tb_User u = userService.selectUser(user.getUsername());
        if (u!=null){
            response.getWriter().write("用户名已经存在!");
        }else{
            boolean b=userService.register(user);
            if(b){
                response.getWriter().write("注册成功!");
            }else{
                response.getWriter().write("注册失败!");
            }
        }
    }
    @RequestMapping("/userEdit")
    @ResponseBody
    public void useredit(Tb_User user,HttpServletResponse response,HttpServletRequest request) throws IOException {
        Tb_User u= (Tb_User) request.getSession().getAttribute("user");
        System.out.print("123123");
        user.setUsername(u.getUsername());
        boolean i=  userService.useredit(user);
        if(i){
            response.getWriter().write(u.getUsername());
            response.getWriter().write("修改成功!");
        }else{
            response.getWriter().write("修改失败!");
        }
    }



}
