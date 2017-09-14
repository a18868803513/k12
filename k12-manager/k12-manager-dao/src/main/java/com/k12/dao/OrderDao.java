package com.k12.dao;

import com.k12.domain.Tb_Order;
import org.apache.ibatis.annotations.Insert;

/**
 * Created by dwy on 2017/9/14.
 */
public interface OrderDao {
    @Insert("insert into tb_order (receiverName,receiverAddress,receiverPhone,money,createTime,ouid) values(#{username},#{receiverAddress},#{receiverPhone},#{money},now(),#{tb_user.id})")
    void addOrder(Tb_Order tb_order);

}
