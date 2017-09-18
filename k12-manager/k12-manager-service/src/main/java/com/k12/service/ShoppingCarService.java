package com.k12.service;

import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_ShoppingItems;
import com.k12.domain.Tb_User;

import java.util.List;

/**
 * Created by Administrator on 2017-09-11.
 */
public interface ShoppingCarService {
    void addShoppingCar(Tb_User tb_user);
    void addShoppingItems(Tb_ShoppingItems tb_shoppingItems);
    List<Tb_ShoppingItems> selectAllItem(String username);
    List<Tb_ShoppingItems> selectByPid(Tb_Product tb_product,Tb_User tb_user);
    int selectCount(Tb_Product tb_product);
    void updateCounts(Tb_ShoppingItems tb_shoppingItems,Tb_Product tb_product);
    void deleteShoppingItem(Tb_Product tb_product);
}
