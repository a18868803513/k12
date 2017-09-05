package com.k12.service;

import com.k12.utils.Page;

/**
 * Created by dwy on 2017/9/4.
 */
public interface ProductService {
    Page selectByPage(int page,int rows,String gid,String cid);

}
