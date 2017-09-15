package com.k12.web;


import com.k12.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    @RequestMapping("/{jn}")
    public String t1(@PathVariable String jn){
        System.out.println(jn);
            String[] arr={"xxxx","fic","yyyy"};
        for(int i=0;i<arr.length;i++){
            if (jn.contains(arr[i])){
                return "/fiction/"+jn+".html";
            }
        }
            return jn+".jsp";




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
