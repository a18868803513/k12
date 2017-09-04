package com.k12.service;

import com.k12.domain.Tb_Grade;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
public interface GradeService {
    Tb_Grade selectByName(String grade);
    List<Tb_Grade> selectAll();
    Tb_Grade selectById(int gid);
}
