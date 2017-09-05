package com.k12.service.impl;

import com.k12.dao.VideoDao;
import com.k12.domain.Tb_Video;

import com.k12.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LB on 2017/9/3.
 */
@Service
@Transactional
public class VideoServiceImpl implements VideoService {
    @Autowired
    private VideoDao videoDao;
    @Override
    public boolean add(Tb_Video video) {
        return videoDao.save(video)>0?true:false;
    }

    @Override
    public List<Tb_Video> queryAll() {

        return videoDao.selectAll();
    }
}
