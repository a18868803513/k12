package com.k12.service;

import com.k12.domain.Tb_Fiction;
import com.k12.domain.Tb_Headline;

import java.util.List;

/**
 * Created by LB on 2017/9/12.
 */
public interface FictionService  {
    List<Tb_Fiction> queryAll();

   List <Tb_Fiction> queryByHid(int id );

    List<Tb_Headline> listHeadLine();
}
