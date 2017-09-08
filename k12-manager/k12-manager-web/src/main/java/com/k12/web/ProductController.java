package com.k12.web;

import com.k12.service.ProductService;
import com.k12.utils.Order;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
@Controller
public class ProductController {
    @Autowired
    ProductService productService;


    @RequestMapping("productList")
    @ResponseBody
    public Page selectByPage(int page, int rows, String gid, String cid,Order order,int statusId,String name) {

        return productService.selectByPage(page, rows, gid, cid,order,statusId,name);
    }

    @RequestMapping("removeProduct")
    public String remove(String ids){
        System.out.println("============="+ids);
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.removeProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }
    @RequestMapping("upProduct")
    public String upProduct(String ids){
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.upProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }
    @RequestMapping("downProduct")
    public String downProduct(String ids){
        String[] a=ids.split(",");
        List<String> list= Arrays.asList(a);
        list.forEach(n->productService.downProduct(Integer.parseInt(n)));
        return "ManagerIndex";
    }

}
