package com.k12.dao;

import com.k12.domain.Tb_Product;
import com.k12.sql.ProductSql;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
public interface ProductDao {

    @Select("select * from tb_product")
    @ResultType(Tb_Product.class)
    List<Tb_Product> selectAll();

    @SelectProvider(type = ProductSql.class, method = "selectByPage")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "name", column = "name"),
            @Result(property = "price", column = "price"),
            @Result(property = "instrudction", column = "instrudction"),
            @Result(property = "status", column = "status"),
            @Result(property = "grade", column = "grade"),
            @Result(property = "course", column = "course"),
            @Result(property = "tb_course.id", column = "cid"),
            @Result(property = "tb_grade.id", column = "gid")
    })
    List<Tb_Product> selectByPage(int first, int end, String gid, String cid);
}
