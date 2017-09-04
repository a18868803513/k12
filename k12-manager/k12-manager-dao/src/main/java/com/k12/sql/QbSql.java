package com.k12.sql;


import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import org.apache.ibatis.jdbc.SQL;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class QbSql {
    public String selectByPage(int first,int end,Tb_Grade tb_grade,Tb_Course tb_course){
        String sql= new SQL(){{
            SELECT("q.*");
            FROM("tb_questionbase q");
            WHERE("q.gid=#{arg2.id} and q.cid=#{arg3.id}");
            /*LEFT_OUTER_JOIN("tb_grade g on q.gid=#{arg2}.id");
            LEFT_OUTER_JOIN("tb_course c on q.cid=#{arg3}.id");*/
        }
        }.toString();
        if (first>-1&&end>0){
            sql+=" limit #{arg0},#{arg1}";
        }
        return sql;

    }


    }


