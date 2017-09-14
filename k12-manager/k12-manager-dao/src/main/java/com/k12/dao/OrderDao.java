package com.k12.dao;

import com.k12.domain.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by dwy on 2017/9/14.
 */
public interface OrderDao {
    @Insert("insert into tb_order (receiverName,receiverAddress,receiverPhone,money,createTime,ouid,no) values(#{receiverName},#{receiverAddress},#{receiverPhone},#{money},now(),#{tb_user.id},#{no})")
    void addOrder(Tb_Order tb_order);
    @Insert("insert into tb_orderitems (oid,pid,counts) values(#{tb_order.id},#{tb_product.id},#{counts})")
    void addOrderItems(Tb_OrderItems tb_orderItems);
    @Select("select id from tb_order where no=#{no}")
    Tb_Order selectByNo(String no);
    @Select("select * from tb_order where ouid=#{id} and status=1")
    List<Tb_Order> selectByUid(Tb_User tb_user);
    @Delete("delete from tb_orderitems where pid=#{id}")
    void deleteOrderItem(Tb_Product tb_product);
    @Select("select o.*,p.* from tb_orderitems o left join tb_product p on o.pid=p.id where oid=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "tb_product.id", column = "pid"),
            @Result(property = "tb_product.name", column = "name"),
            @Result(property = "tb_product.img", column = "img"),
            @Result(property = "tb_product.price", column = "price")
    })
    List<Tb_OrderItems> selectAllOrderItem(Tb_Order tb_order);


}
