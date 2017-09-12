package com.k12.dao;

import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Insert;

/**
 * Created by Administrator on 2017-09-11.
 */
public interface ShoppingCarDao {

    @Insert("insert into tb_shoppingcar (uid) value (#{id})")
    void addShoppingCar(Tb_User tb_user);
    @Insert("")
    void addShoppingItems(Tb_Product tb_product);
}
