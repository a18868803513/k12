package com.k12.service.impl;

import com.k12.domain.Tb_Grade;
import com.k12.dao.GradeDao;
import com.k12.service.GradeService;
import com.k12.utils.JedisClient;
import com.k12.utils.JsonUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/9/3/003.
 */
@Service
@Transactional
@Scope("prototype")
public class GradeServiceImpl implements GradeService {
    @Autowired
    JedisClient jedisClient;
    @Autowired
    GradeDao gradeDao;
    @Override
    public Tb_Grade selectByName(String grade) {
        return gradeDao.selectByName(grade);
    }

    @Override
    public List<Tb_Grade> selectAll() {
        try {
            String json = jedisClient.hget("GRADE_LIST", "GRADE");
            if (StringUtils.isNotBlank(json)) {
                System.out.println("缓存中有，直接返回");
                List<Tb_Grade> list=JsonUtils.jsonToList(json,Tb_Grade.class);
                return list;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("缓存中没有，访问数据库");
        List<Tb_Grade> list=gradeDao.selectAll();
        try {
            jedisClient.hset("GRADE_LIST","GRADE", JsonUtils.objectToJson(list));
            System.out.println("存到缓存中");

        }catch (Exception e){
            e.printStackTrace();
        }
        return list;

    }

    @Override
    public Tb_Grade selectById(int gid) {
        return gradeDao.selectById(gid);
    }
}
