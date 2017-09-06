package com.k12.service;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_QusetionBase;
import com.k12.utils.Order;
import com.k12.utils.Page;
import com.k12.utils.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public interface QbService {
    Page selectByPage(int page,int rows,String gid,String cid,Order order,int statusId,Select sel);
    void addQb(int cid,int gid,String question,String answer);
    void upQb(int id);
    void downQb(int id);
    void removeQb(int id);


}
