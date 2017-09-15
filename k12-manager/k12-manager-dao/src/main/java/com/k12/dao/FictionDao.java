package com.k12.dao;

import com.k12.domain.Tb_Fiction;
import com.k12.domain.Tb_Headline;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 小说接口
 * Created by LB on 2017/9/12.
 */
public interface FictionDao {

    @Select("select f.*,c.* from tb_fiction f left join tb_headline h on f.hid=h.id")
    @Results({
    @Result(id = true, property = "id", column = "id") ,
    @Result(property = "title", column = "title") ,
    @Result(property = "content", column = "content") ,
    @Result(property = "headline.id", column = "h.id") ,
    @Result(property = "headline.novelTitle", column = "novelTitle") ,
    })
     List<Tb_Fiction> queryAll();
    //通过小说题目查询
    @Select("select * from tb_fiction where hid =#{headline.id}")
    List<Tb_Fiction> selectByHid(int id);

    //查询出所有小说标题
     @Select("select * from tb_headline")
      List<Tb_Headline> selectAllHeadLine();










}
