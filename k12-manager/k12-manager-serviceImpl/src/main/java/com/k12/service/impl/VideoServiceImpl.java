package com.k12.service.impl;

import com.k12.dao.VideoDao;
import com.k12.domain.Tb_Video;
import com.k12.service.VideoService;
import com.k12.utils.PageBean;
import com.k12.utils.Result;
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
//上架
    @Override
    public void upVideo(int id) {
        videoDao.upVideo(id);
    }
    //下架
    @Override
    public void downVideo(int id) {
        videoDao.downVideo(id);
    }

    @Override
    public void updateVideo(Tb_Video tb_video) {
        videoDao.update(tb_video);
    }

//批量修改

    @Override
    public void removeVideo(int id) {
        videoDao.removeVideo(id);
    }

    @Override
    public Result<Tb_Video> queryAllByPage(PageBean pageBean) {
        System.out.println("???");
        List<Tb_Video> list =  videoDao.selectAll(pageBean);
        System.out.println(list.size());
        int counts =  videoDao.countVideo();
        System.out.println(counts);
        Result<Tb_Video> result = new Result<>();
        result.setTotal(counts);
        result.setRows(list);
        return result;
    }
}
