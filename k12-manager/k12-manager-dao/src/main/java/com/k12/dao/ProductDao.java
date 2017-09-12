package com.k12.dao;

import com.k12.domain.Tb_Product;
import com.k12.sql.ProductSql;
import com.k12.utils.Order;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
public interface ProductDao {

    @Select("select * from tb_product")
    @ResultType(Tb_Product.class)
    List<Tb_Product> selectAll();

    @Select("select * from tb_product where id=#{id}")
    Tb_Product selectById(int id);

    @SelectProvider(type = ProductSql.class, method = "selectByPage")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "name", column = "name"),
            @Result(property = "price", column = "price"),
            @Result(property = "instrudction", column = "instrudction"),
           /* @Result(property = "status", column = "status"),*/
            @Result(property = "grade", column = "grade"),
            @Result(property = "course", column = "course"),
            @Result(property = "tb_course.id", column = "cid"),
            @Result(property = "tb_grade.id", column = "gid")
    })
    List<Tb_Product> selectByPage(int first, int end, String gid, String cid,Order order,int statusId,String name);
    //删除
    @Update("update tb_product set status=3 where id=#{id}")
    void removeProduct(int id);
    //下架
    @Update("update tb_product set status=2 where id=#{id}")
    void downProduct(int id);
    //正常上架
    @Update("update tb_product set status=1 where id=#{id}")
    void upProduct(int id);
    //增加
    @Insert("insert into tb_product(name,price,img,instrudction,gid,cid,createTime,barcode,num) value(#{name},#{price},#{img},#{instrudction},#{tb_grade.id},#{tb_course.id},now(),#{barcode},#{num})")
    int addProduct(Tb_Product product);
    //修改
    @Update("update tb_product set name=#{name},price=#{price},instrudction=#{instrudction},updateTime=now() where id=#{id}")
    void updateProduct(Tb_Product tb_product);
}
