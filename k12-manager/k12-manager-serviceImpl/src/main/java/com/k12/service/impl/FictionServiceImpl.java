package com.k12.service.impl;

import com.k12.dao.FictionDao;
import com.k12.domain.Tb_Fiction;
import com.k12.service.FictionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by LB on 2017/9/12.
 */
@Service
public class FictionServiceImpl implements FictionService {
    @Autowired
    private FictionDao fictionDao;
    @Override
    public List<Tb_Fiction> queryAll() {
        return fictionDao.queryAll();
    }

    @Override
    public Tb_Fiction selectByHeadline(String headline) {
        return fictionDao.selectByName(headline);
    }

    @Override
    public Tb_Fiction selectByTitle(String title) {
        return fictionDao.selectTitle(title);
    }
}
