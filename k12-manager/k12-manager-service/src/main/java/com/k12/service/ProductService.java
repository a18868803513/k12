package com.k12.service;

import com.k12.domain.Tb_Product;
import com.k12.utils.Order;
import com.k12.utils.Page;

import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
public interface ProductService {
    Page selectByPage(int page,int rows,String gid,String cid,Order order,int statusId,String name);
    List<Tb_Product> selectAll();
    Tb_Product selectById(int id);
    void upProduct(int id);
    void downProduct(int id);
    void removeProduct(int id);
    boolean addProduct(Tb_Product product);
    void updateProduct(Tb_Product tb_product);
}
