package com.k12.dao;

import com.k12.domain.Tb_Course;
import org.apache.ibatis.annotations.Select;

/**
 * Created by Administrator on 2017/9/3/003.
 */
public interface CourseDao {
    @Select("select * from tb_course where cousre =#{course}")
    Tb_Course selectByName(String course);
}
