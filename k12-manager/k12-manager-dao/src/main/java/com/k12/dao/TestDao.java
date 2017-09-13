package com.k12.dao;

import com.k12.domain.Tb_Test;
import org.apache.ibatis.annotations.Insert;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public interface TestDao {
    @Insert("insert into tb_test (uid,qid,userAnswer,status) values(#{uid},#{qid},#{userAnswer},#{status})")
    void  addTest(Tb_Test test);
}
