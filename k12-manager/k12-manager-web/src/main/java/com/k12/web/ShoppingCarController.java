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
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String addShoppingItems(HttpServletRequest request, String id, String counts, Tb_ShoppingCar tb_shoppingCar, Tb_User tb_user, Tb_Product tb_product, Model model) {
        Tb_User user = (Tb_User) request.getSession().getAttribute("user");
        tb_shoppingCar.setId(user.getId());
        if ((counts != null) && !("".equals(counts))) {
            int count = Integer.parseInt(counts);
            int id1 = Integer.parseInt(id);
            if (count > 0) {
                Tb_ShoppingItems tb_shoppingItems = new Tb_ShoppingItems();
                List<Tb_ShoppingItems> list1 = shoppingCarService.selectByPid(tb_product);
                if (list1.size() > 0) {
                    //System.out.println(count+"------"+shoppingCarService.selectCount(tb_product));
                    count = count + shoppingCarService.selectCount(tb_product);
                    tb_shoppingItems.setCounts(count);
                    //System.out.println(tb_product);
                    shoppingCarService.updateCounts(tb_shoppingItems, tb_product);
                    List<Tb_ShoppingItems> list = shoppingCarService.selectAllItem(user.getUsername());
                    //System.out.println(list);
                    model.addAttribute("shoppingItem", list);
                    //tb_product = productService.selectById(id1);
                    //model.addAttribute("oneProduct", tb_product);
                    return "cart";
                } else {
                    tb_shoppingItems.setCounts(count);
                    tb_shoppingItems.setUsername(user.getUsername());
                    tb_shoppingItems.setTb_product(tb_product);
                    tb_shoppingItems.setTb_shoppingCar(tb_shoppingCar);
                    shoppingCarService.addShoppingItems(tb_shoppingItems);
                    List<Tb_ShoppingItems> list = shoppingCarService.selectAllItem(user.getUsername());
                    //System.out.println(list);
                    model.addAttribute("shoppingItem", list);
                    //tb_product = productService.selectById(id1);
                    //model.addAttribute("oneProduct", tb_product);
                    return "cart";
                }
            } else {
                return "product";
            }
        } else {
            return "product";
        }

    }

    @RequestMapping("removeShoppingItem")
    public String removeShoppingItem(Tb_Product tb_product) {
        shoppingCarService.deleteShoppingItem(tb_product);
        return "showShoppingItems";
    }

    @RequestMapping("updateShppingItem")
    public String updateShppingItem(String id, String counts, Tb_ShoppingItems tb_shoppingItems, Tb_Product tb_product) {
        if ((counts != null) && !("".equals(counts))) {
            int count = Integer.parseInt(counts);
            int id1 = Integer.parseInt(id);
            if (count > 0) {
                tb_shoppingItems.setCounts(count);
                tb_product.setId(id1);
                shoppingCarService.updateCounts(tb_shoppingItems, tb_product);
                return "showShoppingItems";
            } else {
                return "showShoppingItems";
            }
        }
        return "showShoppingItems";

    }


    @RequestMapping("showShoppingItems")
    public String showShoppingItem(Model model,HttpServletRequest request) {
        Tb_User user = (Tb_User) request.getSession().getAttribute("user");
        List<Tb_ShoppingItems> list = shoppingCarService.selectAllItem(user.getUsername());
        model.addAttribute("shoppingItem", list);
        return "cart";
    }
    @ResponseBody
    @RequestMapping("showShoppingItemsAjax")
    public List<Tb_ShoppingItems> showShoppingItem(String username) {
        return shoppingCarService.selectAllItem(username);


    }

}