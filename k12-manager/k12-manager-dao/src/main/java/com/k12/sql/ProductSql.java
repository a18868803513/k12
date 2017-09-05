package com.k12.sql;

import org.apache.ibatis.jdbc.SQL;

/**
 * Created by dwy on 2017/9/4.
 */
public class ProductSql {
    public String selectByPage(int first, int end, String gid, String cid) {
        String sql = new SQL() {
            {
                SELECT("p.*,g.grade grade,c.course course");
                FROM("tb_product p");
                LEFT_OUTER_JOIN("tb_grade g on p.gid=g.id");
                LEFT_OUTER_JOIN("tb_course c on p.cid=c.id");
                if (gid!=null && gid.length() > 0) {
                    WHERE("p.gid=#{arg2}");
                }
                if (cid!=null && cid.length()>0) {
                    WHERE("p.cid=#{arg3}");
                }
            }
        }.toString();
        sql=sql+" limit #{arg0},#{arg1}";
        return sql;
    }
}
