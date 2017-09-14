package com.k12.web;

import com.k12.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dwy on 2017/9/14.
 */
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;


    @RequestMapping("")
    public String addOrder(){
        return null;
    }


}
