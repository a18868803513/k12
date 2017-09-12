package com.k12.service;

import com.k12.domain.Tb_Video;
import com.k12.utils.Order;
import com.k12.utils.PageBean;
import com.k12.utils.Result;

import java.util.List;

/**
 * Created by LB on 2017/9/3.
 */

public interface VideoService {
      boolean add(Tb_Video video);

      Result<Tb_Video> queryAllByPage(PageBean pageBean, String gid, String cid, Order order, String statusId, String name);

      //批量更新
      void removeVideo(int id);
      //上架
      void upVideo(int id);
      //下架
      void downVideo(int id);

      //编辑
      void updateVideo(Tb_Video tb_video);

      //查询所有
      List<Tb_Video> queryAll();

      //通过id查询
      Tb_Video queryById (int id);
      //通过课程id和年级id查询
      List<Tb_Video> listVideosById (int gid,int cid);

}