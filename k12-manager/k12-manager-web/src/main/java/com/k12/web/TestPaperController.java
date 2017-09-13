package com.k12.web;

import com.k12.domain.Tb_Test;
import com.k12.domain.Tb_User;
import com.k12.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/9/12/012.
 */
@Controller
public class TestPaperController {
    @Autowired
    TestService service;
    @RequestMapping("addTestPaper")
    public void test1(HttpServletRequest request, String[] staArr,String[] qArr,String[] anArr){
        Tb_Test test=new Tb_Test();
        Tb_User user=(Tb_User)request.getSession().getAttribute("user");
        for (int i=0;i<anArr.length;i++){
            test.setQid(Integer.parseInt(qArr[i]));
            test.setStatus(Integer.parseInt(staArr[i]));
            test.setUserAnswer(anArr[i]);
            test.setUid(user.getId());
            System.out.println(test);
            service.addTest(test);
        }
    }
/*    @RequestMapping("addTestPaper")
    public void test1(String staArr,String qArr,String anArr){
        System.out.println(staArr);
    }*/
}
