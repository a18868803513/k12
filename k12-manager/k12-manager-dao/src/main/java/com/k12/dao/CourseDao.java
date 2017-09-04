package com.k12.dao;

import com.k12.domain.Tb_Course;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
public interface CourseDao {
    @Select("select * from tb_course where course =#{course}")
    Tb_Course selectByName(String course);
    @Select("select * from tb_course where id=#{cid}")
    Tb_Course selectById(int cid);
    @Select("select * from tb_course")
    List<Tb_Course> selectAll();
}
