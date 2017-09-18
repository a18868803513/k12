package com.k12.web;


import com.k12.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/9/1/001.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping("/")
    public String t(){
        return "index.jsp";
    }
    @RequestMapping("{jn}")
    public String t1(@PathVariable String jn){
        System.out.println(jn);
        System.out.println("dddddddd");
            String[] arr={"xxxx","fic","yyyy"};
        for(int i=0;i<arr.length;i++){
            if (jn.contains(arr[i])){
                return "/fiction/"+jn+".html";
            }
        }

            return jn+".jsp";





    }
    @RequestMapping("/user/loginuser")
    public String test5(String n,String p,Model model){
        UsernamePasswordToken token=new UsernamePasswordToken(n, p);
        System.out.println(n);
        System.out.println("ytttt"+token.getUsername());
        Subject subject= SecurityUtils.getSubject();
        try {
            subject.login(token);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            model.addAttribute("error", "亲，账号或密码错误");
            return "login";
        }
        System.out.println("登录："+subject.isAuthenticated());
        return "success.jsp";


    }
    @RequestMapping("/user/update")
    public String test2() {
        Subject subject = SecurityUtils.getSubject();
        //检查是否拥有修改权限.也可以使用@RequiresPermissions
        subject.checkPermission("update");
        //检查当前用户是否是admin角色,也可以使用@RequiresRoles(value="admin")
        subject.checkRole("admin");

        System.out.println("修改用户信息");
        return "success.jsp";
    }
    //验证要求要有权限
    @RequestMapping("/user/deletu")
    public String test3(Model model) {
        Subject subject = SecurityUtils.getSubject();
        /*try {
            subject.checkPermission("delete");
            System.out.println("删除用户");
            model.addAttribute("msg", "OK");
        } catch (AuthorizationException e) {
            // TODO Auto-generated catch block
            System.out.println("没有权限");
            model.addAttribute("msg", "亲，你暂无权限");
        }*/
        return "success.jsp";
    }
    //注解验证必须登录
    //@RequiresUser
    //@RequiresRoles("root")
    @RequestMapping("/u1")
    public String test4(){
        System.out.println("登录啦");
        return "success.jsp";
    }

  /*  @RequestMapping(value = "login/{username}/{password}",method = RequestMethod.GET)
    public String login(@PathVariable String username,@PathVariable String password){
        if (userService.login(username,password)){
            return "success";
        }else{
            return "index";
        }

    }*/
}
