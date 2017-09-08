package com.k12.sql;

import com.k12.utils.Order;
import com.k12.utils.PageBean;
import org.apache.ibatis.jdbc.SQL;

/**
 * 动态sql实现模糊查询
 * Created by LB on 2017/9/6.
 */


public class VideoSql {
    //select v.*,c.*,g.* from tb_video v left join tb_course c on v.cid=c.id
    // left join tb_grade g on v.gid=g.id limit #{counts},#{rows}
    public String selectByPage(PageBean pageBean, String gid, String cid, Order order, String statusId, String name) {
        String sql = new SQL() {
            {
                SELECT("v.*,g.grade grade,c.course course,case v.status when 1 then '正常' when 2 then '下架' when 3 then '删除'end as statusName");
                FROM("tb_video v");
                LEFT_OUTER_JOIN("tb_grade g on v.gid=g.id");
                LEFT_OUTER_JOIN("tb_course c on v.cid=c.id");
                if (statusId != null && statusId.length() > 0) {
                    if (Integer.parseInt(statusId) != 0) {
                        WHERE("v.status=#{arg4}");
                    }
                }
                if (gid != null && gid.length() > 0) {
                    WHERE("v.gid=#{arg1}");
                }
                if (cid != null && cid.length() > 0) {
                    WHERE("v.cid=#{arg2}");
                }
                if (name != null && name.length() > 0) {
                    WHERE("name like  CONCAT('%', #{arg5},'%')");
                }

            }

        }.toString();
        if (order != null && order.getSort() != null && order.getOrder() != null) {
            sql += " order by " + order.getOrderStr();
        }
        if (pageBean != null) {
            sql += " limit #{arg0.counts},#{arg0.rows}";
        }
        return sql;
    }
}


