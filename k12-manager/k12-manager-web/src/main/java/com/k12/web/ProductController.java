package com.k12.web;

import com.k12.service.ProductService;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dwy on 2017/9/4.
 */
@Controller
public class ProductController {
    @Autowired
    ProductService productService;


    @RequestMapping("productList")
    @ResponseBody
    public Page selectByPage(int page, int rows, String gid, String cid) {
        System.out.println(productService.selectByPage(page, rows, gid, cid));
        return productService.selectByPage(page, rows, gid, cid);
    }


}
