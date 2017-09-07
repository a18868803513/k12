package com.k12.dao;

import com.k12.domain.Tb_Video;
import com.k12.utils.PageBean;
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
    @Select("select v.*,c.*,g.* from tb_video v left join tb_course c on v.cid=c.id left join tb_grade g on v.gid=g.id limit #{counts},#{rows}")
    @Results({
            @Result(id=true,property="id",column="id"),
            @Result(property="name",column="name"),
            @Result(property="url",column="url"),
            @Result(property="introduction",column="introduction"),
            @Result(property="status",column="status"),

            @Result(property="course.id",column="cid"),
            @Result(property="course.course",column="course"),

            @Result(property="grade.id",column="gid"),
            @Result(property="grade.grade",column="grade"),
    })
        List<Tb_Video> selectAll(PageBean pageBean);
    //查询数量
    @Select("select count(1) from tb_video")
    @ResultType(Tb_Video.class)
    int countVideo();
    //批量删除
    @Update("update tb_video set status=3 where id=#{id}")
    @ResultType(Tb_Video.class)
    void removeVideo(int id);
    //批量上架
    @Update("update tb_video set status=4 where id=#{id}")
    @ResultType(Tb_Video.class)
    void upVideo(int id);

    //批量下架
    @Update("update tb_video set status=2 where id=#{id}")
    @ResultType(Tb_Video.class)
    void downVideo(int id);
}
