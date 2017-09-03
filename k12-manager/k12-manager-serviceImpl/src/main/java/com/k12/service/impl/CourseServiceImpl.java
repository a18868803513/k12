package com.k12.service.impl;

import com.k12.dao.CourseDao;
import com.k12.domain.Tb_Course;
import com.k12.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2017/9/3/003.
 */
@Transactional
@Service
@Scope("prototype")
public class CourseServiceImpl implements CourseService {
    @Autowired
    CourseDao courseDao;
    @Override
    public Tb_Course selectByName(String course) {
        return courseDao.selectByName(course);
    }

    @Override
    public Tb_Course selectById(int cid) {
        return courseDao.selectById(cid);
    }
}
