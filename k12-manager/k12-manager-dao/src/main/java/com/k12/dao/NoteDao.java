package com.k12.dao;

import com.k12.domain.Tb_Note;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public interface NoteDao {
    @Insert("insert into tb_note (title,content,authorId,Createtime) values(#{title},#{content},#{user.id},now())")
    void addNote(Tb_Note note);
    @Select("select * from tb_note")
    List<Tb_Note> queryAll();
    @Select("select * from tb_note where noteID=#{id}")
    Tb_Note queryById(int id);
}
