package com.k12.service.impl;

import com.k12.dao.VideoDao;
import com.k12.domain.Tb_Video;
import com.k12.service.VideoService;
import com.k12.utils.Order;
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

    //模糊查询或者分页，
    @Override
    public Result<Tb_Video> queryAllByPage(PageBean pageBean, String gid, String cid, Order order, String statusId, String name) {
        System.out.println("???");
        //推荐使用这种，将参数封装到Map集合 dao和service都传参数为Map集合
      /*  Map<String,Object> map = new HashMap<String,Object>();
        map.put("pageBean",pageBean);
        map.put("order",order);
        map.put("course",course);
        map.put("grade",grade);
        map.put("statusId",statusId);
        map.put("name",name);*/
        List<Tb_Video> list =  videoDao.selectByPage(pageBean, gid, cid, order, statusId, name);
        System.out.println(list.size());
        int counts =  videoDao.countVideos(pageBean, gid, cid, order, statusId, name);
        System.out.println(counts);
        Result<Tb_Video> result = new Result<>();
        result.setTotal(counts);
        result.setRows(list);
        return result;
    }

    @Override
    public List<Tb_Video> queryAll() {

        return videoDao.selectAll();
    }


    @Override
    public Tb_Video queryById(int id) {
        return videoDao.selectById(id);
    }

    @Override
    public List<Tb_Video> listVideosById(int gid, int cid) {
        return videoDao.findAllById(gid,cid);
    }
}


