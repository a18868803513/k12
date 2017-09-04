package com.k12.web;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.service.QbService;
import com.k12.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/9/2/002.
 */
@Controller
public class QbController {
    @Autowired
    QbService qbService;
    @RequestMapping("qbList")
    @ResponseBody
    public Page test1(int page,int rows,int gid, int cid ){

        return qbService.selectByPage(page,rows,gid,cid);

    }
}
