package com.k12.dao;

import com.k12.domain.Tb_Fiction;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 小说接口
 * Created by LB on 2017/9/12.
 */
public interface FictionDao {

    @Select("select * from tb_fiction")
     List<Tb_Fiction> queryAll();
    //通过标题查询
    @Select("select * from tb_fiction where headline =#{headline}")
    Tb_Fiction selectByName(String headline);
    //查出题目
    @Select("select * from tb_fiction where title =#{title}")
    Tb_Fiction selectTitle(String title);









}
