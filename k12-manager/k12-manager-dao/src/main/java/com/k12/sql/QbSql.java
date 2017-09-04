package com.k12.sql;


import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import org.apache.ibatis.annotations.Case;
import org.apache.ibatis.jdbc.SQL;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class QbSql {
    public String selectByPage(int first,int end,Tb_Grade tb_grade,Tb_Course tb_course){
        String sql= new SQL(){
            {
                SELECT("q.*,g.grade grade,c.course course, case q.status when 1 then '正常' when 2 then '下架' when 3 then '删除' end as statusName");
                FROM("tb_questionbase q");
                LEFT_OUTER_JOIN("tb_grade g on q.gid=g.id");
                LEFT_OUTER_JOIN("tb_course c on q.cid=c.id");
                if (tb_grade != null) {
                    WHERE("q.gid=#{arg2.id}");
                }
                    if (tb_course != null) {
                        WHERE("q.cid=#{arg3.id}");
                    }

                }

        }.toString();
        if (first>-1&&end>0){
            sql+=" limit #{arg0},#{arg1}";
        }
        return sql;

    }


    }


