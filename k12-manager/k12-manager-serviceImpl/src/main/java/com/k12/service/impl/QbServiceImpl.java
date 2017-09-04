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
    public Page selectByPage(int page, int rows, String gid, String cid) {
        Page pageBean =new Page();
        Tb_Course tb_course=null;
        Tb_Grade tb_grade=null;
        if (gid!=null&&!"".equals(gid)){
            tb_grade=gradeDao.selectById(Integer.parseInt(gid));
        }
        if (cid!=null&&!"".equals(cid)){
            tb_course=courseDao.selectById(Integer.parseInt(cid));
        }



        int total=qbDao.selectByPage(0,888,tb_grade,tb_course).size();
        List<Tb_QusetionBase> list=qbDao.selectByPage((page - 1) * rows, rows, tb_grade, tb_course);

        System.out.print("-----------"+list);
        pageBean.setTotal(total);
        pageBean.setRows(list);
        return pageBean;
    }

    @Override
    public void addQb(int cid, int gid, String question, String answer) {

        qbDao.addQb(cid,gid,question,answer);
    }

    @Override
    public void removeQb(int id) {
        qbDao.removeQb(id);
    }

    @Override
    public void upQb(int id) {
        qbDao.upQb(id);
    }

    @Override
    public void downQb(int id) {
        qbDao.downQb(id);
    }
}
