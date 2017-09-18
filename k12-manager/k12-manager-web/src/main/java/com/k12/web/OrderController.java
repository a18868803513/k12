package com.k12.web;

import com.k12.domain.*;
import com.k12.service.OrderService;
import com.k12.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by dwy on 2017/9/14.
 */
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private ShoppingCarService shoppingCarService;

    @RequestMapping("addOrder")
    public String addOrder(String receiverAddress,String receiverName,String receiverPhone,Tb_Order tb_order,HttpSession session,Model model,Tb_User tb_user) throws UnsupportedEncodingException {
        tb_user= (Tb_User) session.getAttribute("user");
        //receiverAddress= new String(receiverAddress.getBytes("ISO8859_1"),"utf-8");
        //receiverName= new String(receiverName.getBytes("ISO8859_1"),"utf-8");
        tb_order.setTb_user(tb_user);
        tb_order.setReceiverAddress(receiverAddress);
        tb_order.setReceiverPhone(receiverPhone);
        tb_order.setReceiverName(receiverName);
        //生成订单
        UUID uuid=UUID.randomUUID();
        String no=uuid.toString().substring(0,8);
        String sdf = new SimpleDateFormat("yyyyMMddHHMMSS").format(new Date());
        no=no+sdf;
        tb_order.setNo(no);
        double money=0;
        List<Tb_ShoppingItems> list=shoppingCarService.selectAllItem(tb_user.getUsername());
        for(Tb_ShoppingItems shoppingItems:list){
            Tb_OrderItems tb_orderItems=new Tb_OrderItems(shoppingItems.getCounts(),tb_order,shoppingItems.getTb_product());
            tb_orderItems.setTb_order(tb_order);
            money+=tb_orderItems.getTb_product().getPrice()*tb_orderItems.getCounts();
        }
        tb_order.setMoney(money);
        orderService.addOrder(tb_order);//生成一个order
        tb_order=orderService.selectByNo(no);
        for(Tb_ShoppingItems shoppingItems:list) {
            Tb_OrderItems tb_orderItems = new Tb_OrderItems(shoppingItems.getCounts(), tb_order, shoppingItems.getTb_product());
            tb_orderItems.setTb_order(tb_order);
            orderService.addOrderItems(tb_orderItems);
        }
        model.addAttribute("allItem",list);
        return "order";
    }

    @RequestMapping("selectByUid")
    public String selectByUid(Tb_User tb_user,Tb_OrderItems tb_orderItems,HttpSession session,Model model){
        tb_user= (Tb_User) session.getAttribute("user");
        System.out.println(tb_user);
        List<Tb_Order> list=orderService.selectByUid(tb_user);
        List<Tb_ShoppingItems> list1=shoppingCarService.selectAllItem(tb_user.getUsername());
        model.addAttribute("allItem",list1);
        model.addAttribute("myItems",list);
        return "order-list";
    }

    @RequestMapping("chaKan")
    public String chaKan(Model model,Tb_Order tb_order,String id,Tb_User tb_user,HttpSession session){
        tb_user= (Tb_User) session.getAttribute("user");
        int id1=Integer.parseInt(id);
        tb_order.setId(id1);
        tb_order=orderService.selectById(tb_order);
        List<Tb_OrderItems> list=orderService.selectAllOrderItem(tb_order);
        model.addAttribute("allItem",list);
        model.addAttribute("oneItem",tb_order);
        return "order";
    }

    @RequestMapping("removeItem")
    public String removeItem(Tb_User tb_user,Tb_Product tb_product,HttpSession session,Model model){
        orderService.deleteOrderItem(tb_product);
        Tb_User user = (Tb_User) session.getAttribute("user");
        List<Tb_ShoppingItems> list = shoppingCarService.selectAllItem(user.getUsername());
        model.addAttribute("shoppingItem", list);
        return "order";
    }

    @RequestMapping("payOrder")
    public String payOrder(String id,Tb_Order tb_order,Model model){
        int id1=Integer.parseInt(id);
        tb_order.setId(id1);
        tb_order=orderService.selectById(tb_order);
        model.addAttribute("payOne",tb_order);
        return "pay";
    }


}
