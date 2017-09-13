package com.k12.dao;

import com.k12.domain.Tb_ShoppingItems;
import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017-09-11.
 */
public interface ShoppingCarDao {

    @Insert("insert into tb_shoppingcar (uid) value (#{id})")
    void addShoppingCar(Tb_User tb_user);
    @Insert("insert into tb_shoppingitems (sid,pid,counts,username) values(#{tb_shoppingCar.id},#{tb_product.id},#{counts},#{username})")
    void addShoppingItems(Tb_ShoppingItems tb_shoppingItems);

    @Select("select s.*,p.* from tb_shoppingitems s left join tb_product p on s.pid=p.id ")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "tb_product.id", column = "pid"),
            @Result(property = "tb_product.name", column = "name"),
            @Result(property = "tb_product.img", column = "img"),
            @Result(property = "tb_product.price", column = "price")
    })
    List<Tb_ShoppingItems> selectAllItem();


}
