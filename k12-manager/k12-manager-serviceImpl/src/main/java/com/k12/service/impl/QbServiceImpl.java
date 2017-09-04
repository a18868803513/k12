package com.k12.service.impl;

import com.k12.dao.CourseDao;
import com.k12.dao.GradeDao;
import com.k12.dao.QbDao;
import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_QusetionBase;
import com.k12.service.QbService;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
@Transactional
@Service
@Scope("prototype")
public class QbServiceImpl implements QbService{
    @Autowired
    QbDao qbDao;
    @Autowired
    CourseDao courseDao;
    @Autowired
    GradeDao gradeDao;

    @Override
    public Page selectByPage(int page, int rows, int gid, int cid) {
        Page pageBean =new Page();
        Tb_Course tb_course=courseDao.selectById(cid);
        Tb_Grade tb_grade=gradeDao.selectById(gid);
        System.out.print(tb_course);
        System.out.print(tb_grade);
        int total=qbDao.selectByPage(0,888,tb_grade,tb_course).size();
        List<Tb_QusetionBase> list=qbDao.selectByPage((page - 1) * rows, rows, tb_grade, tb_course);

        System.out.print(list);
        pageBean.setTotal(total);
        pageBean.setRows(list);
        return pageBean;
    }
}
