package com.k12.service.impl;

import com.k12.dao.OrderDao;
import com.k12.domain.Tb_Order;
import com.k12.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
