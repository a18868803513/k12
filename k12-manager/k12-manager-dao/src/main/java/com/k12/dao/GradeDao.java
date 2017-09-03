package com.k12.dao;

import com.k12.domain.Tb_Grade;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
public interface GradeDao {
    @Select("select * from tb_grade where grade=#{grade}")
    Tb_Grade selectByName(String grade);
    @Select("select * from tb_grade")
    List<Tb_Grade> selectAll();

}
