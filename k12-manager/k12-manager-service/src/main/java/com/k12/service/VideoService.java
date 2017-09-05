package com.k12.service;

import com.k12.domain.Tb_Video;

import java.util.List;

/**
 * Created by LB on 2017/9/3.
 */

public interface VideoService {
      boolean add(Tb_Video video);
      List<Tb_Video> queryAll();

}
