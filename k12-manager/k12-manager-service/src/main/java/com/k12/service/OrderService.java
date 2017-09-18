package com.k12.service;

import com.k12.domain.Tb_Order;
import com.k12.domain.Tb_OrderItems;
import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_User;

import java.util.List;

/**
 * Created by dwy on 2017/9/14.
 */
public interface OrderService {
    void addOrder(Tb_Order tb_order);
    void addOrderItems(Tb_OrderItems tb_orderItems);
    Tb_Order selectByNo(String no);
    List<Tb_Order> selectByUid(Tb_User tb_user);
    Tb_Order selectById(Tb_Order tb_order);
    void deleteOrderItem(Tb_Product tb_product);
    List<Tb_OrderItems> selectAllOrderItem(Tb_Order tb_order);
}
