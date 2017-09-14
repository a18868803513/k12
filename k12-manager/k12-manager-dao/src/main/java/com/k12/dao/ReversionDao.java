package com.k12.dao;

import com.k12.domain.Tb_Reversion;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public interface ReversionDao {
    @Insert("insert into tb_reversion (noteID,uid,content,floor) values(#{noteID},#{user.id},#{content},#{floor})")
    void addReversion(Tb_Reversion reversion);
    @Select("select * from tb_reversion where NoteID=#{id}")
    List<Tb_Reversion> queryReversionById(int id);
}
