package com.k12.dao;

import com.k12.domain.Tb_QusetionBase;
import com.k12.sql.QbSql;
import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;


import com.k12.utils.*;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public interface QbDao {
    @SelectProvider(type = QbSql.class,method = "selectByPage")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "question",column = "question"),
            @Result(property = "answer",column = "answer"),
            @Result(property = "tb_grade.id",column = "gid"),
            @Result(property = "tb_grade.grade",column = "grade"),
            @Result(property = "tb_course.id",column = "cid"),
            @Result(property = "tb_course.course",column = "course")
    })
    List<Tb_QusetionBase> selectByPage(int first,int last,Tb_Grade tb_grade,Tb_Course tb_course,Order order,int statusId, String question);
    @Insert("insert into tb_questionbase (cid,gid,question,answer,createtime) values(#{arg0},#{arg1},#{arg2},#{arg3},now())")
    void addQb(int cid,int gid,String question,String answer);
    @Update("update tb_questionbase set status=3 where id=#{id}")
    void removeQb(int id);
    @Update("update tb_questionbase set status=1 where id=#{id}")
    void upQb(int id);
    @Update("update tb_questionbase set status=2 where id=#{id}")
    void downQb(int id);

}
