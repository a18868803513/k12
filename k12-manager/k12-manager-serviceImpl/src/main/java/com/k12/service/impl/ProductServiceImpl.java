package com.k12.service.impl;

import com.k12.dao.CourseDao;
import com.k12.dao.GradeDao;
import com.k12.dao.ProductDao;
import com.k12.service.ProductService;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public Page selectByPage(int page, int rows, String gid, String cid) {
        Page page1=new Page();
        page1.setRows(productDao.selectByPage((page-1)*rows,rows,gid,cid));
        page1.setTotal(productDao.selectAll().size());
        return page1;
    }
}
