package com.k12.service.impl;

import com.k12.dao.ShoppingCarDao;
import com.k12.domain.Tb_ShoppingItems;
import com.k12.domain.Tb_User;
import com.k12.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<Tb_ShoppingItems> selectAllItem() {
        return dao.selectAllItem();
    }

    @Override
    public void addShoppingItems(Tb_ShoppingItems tb_shoppingItems) {
        dao.addShoppingItems(tb_shoppingItems);
    }
}
