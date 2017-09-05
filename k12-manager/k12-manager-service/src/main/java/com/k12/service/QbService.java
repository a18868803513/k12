package com.k12.service;

import com.k12.utils.Page;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public interface QbService {
    Page selectByPage(int page,int rows,int gid,int cid);

    void addQb(int cid, int gid, String question, String answer);
}
