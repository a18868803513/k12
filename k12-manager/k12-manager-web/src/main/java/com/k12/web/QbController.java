package com.k12.web;

import com.k12.service.QbService;
import com.k12.utils.Order;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
@Controller
public class QbController {
    @Autowired
    QbService qbService;
    @RequestMapping("qbList")
    @ResponseBody
    public Page test1(int page,int rows,String gid, String cid,Order order){
        System.out.println("========="+order);
        return qbService.selectByPage(page,rows,gid,cid,order);

    }
    @RequestMapping("addQb")
    public String test2(int grade,int course,String question,String answer){
        qbService.addQb(grade,course,question,answer);
        return "ManagerIndex";

    }
    @RequestMapping("removeQb")
    public String  test3(String ids){
        String[] arr=ids.split(",");
        List<String> list= Arrays.asList(arr);
        list.forEach(n->qbService.removeQb(Integer.parseInt(n)));
        return "ManagerIndex";

    }
    @RequestMapping("upQb")
    public String test4(String ids){
        String[] arr=ids.split(",");
        List<String> list= Arrays.asList(arr);
        list.forEach(n->qbService.upQb(Integer.parseInt(n)));
        return "ManagerIndex";

    }
    @RequestMapping("downQb")
    public String test5(String ids){
        String[] arr=ids.split(",");
        List<String> list= Arrays.asList(arr);
        list.forEach(n->qbService.downQb(Integer.parseInt(n)));
        return "ManagerIndex";

    }
}
