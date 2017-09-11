package com.k12.service;

import com.k12.domain.Tb_QusetionBase;
import com.k12.utils.*;

import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public interface QbService {
    Page selectByPage(int page,int rows,String gid,String cid,Order order,String statusId, String question);
    void addQb(int cid,int gid,String question,String answer);
    void upQb(int id);
    void downQb(int id);
    void removeQb(int id);
    Result selectByTestPaper(PageBean page, Paper testPaper);

    void updateQb(UpQb upQb);

    List<Tb_QusetionBase> selectQb(Paper testPaper);
}
