package com.k12.service.impl;

import com.k12.dao.ShoppingCarDao;
import com.k12.domain.Tb_User;
import com.k12.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017-09-11.
 */
@Service
public class ShoppingCarServiceImpl implements ShoppingCarService {
    @Autowired
    private ShoppingCarDao dao;
    @Override
    public void addShoppingCar(Tb_User tb_user) {
        dao.addShoppingCar(tb_user);
    }
}
