package com.k12.service;

import com.k12.domain.Tb_Course;

/**
 * Created by Administrator on 2017/9/3/003.
 */

public interface CourseService {
    Tb_Course selectByName(String course);
    Tb_Course selectById(int cid);
}
