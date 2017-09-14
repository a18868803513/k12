package com.k12.service.impl;

import com.k12.dao.OrderDao;
import com.k12.domain.Tb_Order;
import com.k12.domain.Tb_OrderItems;
import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_User;
import com.k12.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dwy on 2017/9/14.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao dao;
    @Override
    public void addOrder(Tb_Order tb_order) {
        dao.addOrder(tb_order);
    }

    @Override
    public void addOrderItems(Tb_OrderItems tb_orderItems) {
        dao.addOrderItems(tb_orderItems);
    }

    @Override
    public Tb_Order selectByNo(String no) {
        return dao.selectByNo(no);
    }

    @Override
    public List<Tb_Order> selectByUid(Tb_User tb_user) {
        return dao.selectByUid(tb_user);
    }

    @Override
    public void deleteOrderItem(Tb_Product tb_product) {
        dao.deleteOrderItem(tb_product);
    }

    @Override
    public List<Tb_OrderItems> selectAllOrderItem(Tb_Order tb_order) {
        return dao.selectAllOrderItem(tb_order);
    }
}
