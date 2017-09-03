package com.k12.service.impl;

import com.k12.domain.Tb_Grade;
import com.k12.dao.GradeDao;
import com.k12.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
@Service
@Transactional
@Scope("prototype")
public class GradeServiceImpl implements GradeService {
    @Autowired
    GradeDao gradeDao;
    @Override
    public Tb_Grade selectByName(String grade) {
        return gradeDao.selectByName(grade);
    }

    @Override
    public List<Tb_Grade> selectAll() {
        return gradeDao.selectAll();
    }
}
