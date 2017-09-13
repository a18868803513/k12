package com.k12.web;

import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_ShoppingCar;
import com.k12.domain.Tb_ShoppingItems;
import com.k12.domain.Tb_User;
import com.k12.service.ProductService;
import com.k12.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by dwy on 2017/9/13.
 */
@Controller
public class ShoppingCarController {
    @Autowired
    private ShoppingCarService shoppingCarService;
    @Autowired
    ProductService productService;

    @RequestMapping("addShoppingItem")
    public String addShoppingItems(HttpServletRequest request,String id, String counts, Tb_ShoppingCar tb_shoppingCar, Tb_User tb_user, Tb_Product tb_product, Model model) {
        Tb_User user= (Tb_User) request.getSession().getAttribute("user");
        if ((counts != null) && !("".equals(counts))) {
            int count = Integer.parseInt(counts);
            int id1 = Integer.parseInt(id);
            if (count > 0) {
                Tb_ShoppingItems tb_shoppingItems = new Tb_ShoppingItems();
                tb_shoppingItems.setCounts(count);
                tb_shoppingItems.setUsername(user.getUsername());
                tb_shoppingItems.setTb_product(tb_product);
                tb_shoppingItems.setTb_shoppingCar(tb_shoppingCar);


                shoppingCarService.addShoppingItems(tb_shoppingItems);
                List<Tb_ShoppingItems> list=shoppingCarService.selectAllItem();
                System.out.println(list);
                model.addAttribute("shoppingItem",list);
                tb_product = productService.selectById(id1);
                model.addAttribute("oneProduct", tb_product);
                return "cart";
            } else {
                return "product";
            }
        } else {
            return "product";
        }

    }
}