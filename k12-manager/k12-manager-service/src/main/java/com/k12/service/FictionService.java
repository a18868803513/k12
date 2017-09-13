package com.k12.service;

import com.k12.domain.Tb_Fiction;

import java.util.List;

/**
 * Created by LB on 2017/9/12.
 */
public interface FictionService  {
    List<Tb_Fiction> queryAll();

    Tb_Fiction selectByHeadline(String headline);

    Tb_Fiction selectByTitle(String title);
}
