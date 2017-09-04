package com.k12.dao;

import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.domain.Tb_QusetionBase;
import com.k12.sql.QbSql;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public interface QbDao {
    @SelectProvider(type = QbSql.class,method = "selectByPage")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "question",column = "question"),
            @Result(property = "answer",column = "answer")
    })
    List<Tb_QusetionBase> selectByPage(int first,int last,Tb_Grade tb_grade,Tb_Course tb_course);
    @Insert("insert into tb_questionbase (cid,gid,question,answer) values(#{arg0},#{arg1},#{arg2},#{arg3})")
    void addQb(int cid,int gid,String question,String answer);

}
