package com.k12.dao;

import com.k12.domain.Tb_Product;
import com.k12.domain.Tb_ShoppingItems;
import com.k12.domain.Tb_User;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by Administrator on 2017-09-11.
 */
public interface ShoppingCarDao {

    @Insert("insert into tb_shoppingcar (uid) value (#{id})")
    void addShoppingCar(Tb_User tb_user);
    @Insert("insert into tb_shoppingitems (sid,pid,counts,username) values(#{tb_shoppingCar.id},#{tb_product.id},#{counts},#{username})")
    void addShoppingItems(Tb_ShoppingItems tb_shoppingItems);

    @Select("select s.*,p.* from tb_shoppingitems s left join tb_product p on s.pid=p.id where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "tb_product.id", column = "pid"),
            @Result(property = "tb_product.name", column = "name"),
            @Result(property = "tb_product.img", column = "img"),
            @Result(property = "tb_product.price", column = "price")
    })
    List<Tb_ShoppingItems> selectAllItem(String username);
    @Select("select * from tb_shoppingitems where pid=#{arg0.id} and username=#{arg1.username}")
    List<Tb_ShoppingItems> selectByPid(Tb_Product tb_product,Tb_User tb_user);

    @Select("select counts from tb_shoppingitems WHERE pid=#{id}")
    int selectCount(Tb_Product tb_product);

    @Update("update tb_shoppingitems set counts=#{arg0.counts} where pid=#{arg1.id}")
    void updateCounts(Tb_ShoppingItems tb_shoppingItems,Tb_Product tb_product);

    @Delete("delete from tb_shoppingitems where pid=#{id}")
    void deleteShoppingItem(Tb_Product tb_product);
}
