package com.k12.dao;

import com.k12.domain.Tb_Video;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by LB on 2017/9/2.
 */
public interface VideoDao {
        //添加视频
    @Insert("insert into tb_video(name,url,introduction,gid,cid) values(#{name},#{url},#{introduction},#{grade.id},#{course.id})")
    @Options(keyProperty="id",useGeneratedKeys=true)
    int save(Tb_Video video);
    //查询所有
    //查询所有
    @Select("select v.*,c.*,g.*,v.name vname from tb_video v left join tb_course c on v.cid=c.id left join tb_grade g on v.gid=g.id")
    @Results({
            @Result(id=true,property="id",column="id"),
            @Result(property="name",column="name"),
            @Result(property="url",column="url"),
            @Result(property="introduction",column="introduction"),
            @Result(property="status",column="status"),

            @Result(property="course.id",column="cid"),
            @Result(property="course.course",column="ccourse"),

            @Result(property="grade.id",column="gid"),
            @Result(property="grade.grade",column="ggrade"),
    })
        List<Tb_Video> selectAll();
}
