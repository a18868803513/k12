package com.k12.service;

import com.k12.domain.Tb_Course;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */

public interface CourseService {
    Tb_Course selectByName(String course);
    Tb_Course selectById(int cid);
    List<Tb_Course> selectAll();
}
