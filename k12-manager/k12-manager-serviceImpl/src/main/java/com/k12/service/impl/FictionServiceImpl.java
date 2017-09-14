package com.k12.service.impl;

import com.k12.dao.FictionDao;
import com.k12.domain.Tb_Fiction;
import com.k12.domain.Tb_Headline;
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
    public List<Tb_Fiction> queryByHid(int id) {
        return fictionDao.selectByHid(id);
    }

    @Override
    public List<Tb_Headline> listHeadLine() {
        return fictionDao.selectAllHeadLine();
    }
}
