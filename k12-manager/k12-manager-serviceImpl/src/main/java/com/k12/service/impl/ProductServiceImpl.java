package com.k12.service.impl;

import com.k12.dao.CourseDao;
import com.k12.dao.GradeDao;
import com.k12.dao.ProductDao;
import com.k12.domain.Tb_Product;
import com.k12.service.ProductService;
import com.k12.utils.Order;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by dwy on 2017/9/4.
 */
@Service
@Transactional
@Scope("prototype")
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;

    @Override
    public Page selectByPage(int page, int rows, String gid, String cid,Order order,int statusId,String name) {
        Page page1=new Page();
        page1.setRows(productDao.selectByPage((page-1)*rows,rows,gid,cid,order,statusId,name));
        page1.setTotal(productDao.selectAll().size());
        return page1;
    }

    @Override
    public List<Tb_Product> selectAll() {
        return productDao.selectAll();
    }

    @Override
    public Tb_Product selectById(int id) {
        return productDao.selectById(id);
    }

    @Override
    public void upProduct(int id) {
        productDao.upProduct(id);
    }

    @Override
    public void downProduct(int id) {
        productDao.downProduct(id);
    }

    @Override
    public void removeProduct(int id) {
        productDao.removeProduct(id);
    }

    @Override
    public boolean addProduct(Tb_Product product) {
        return productDao.addProduct(product)>0?true:false;
    }

    @Override
    public void updateProduct(Tb_Product tb_product) {
        productDao.updateProduct(tb_product);
    }
}
