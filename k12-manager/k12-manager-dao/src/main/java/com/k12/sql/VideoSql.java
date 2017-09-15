package com.k12.sql;

import com.k12.utils.Order;
import com.k12.utils.PageBean;
import org.apache.ibatis.jdbc.SQL;

/**
 * ��̬sqlʵ��ģ����ѯ
 * Created by LB on 2017/9/6.
 */


public class VideoSql {
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

    public String selectByVideo(int gid, int cid) {
        String sql = new SQL() {
            {
                SELECT("*");
                FROM("tb_video v");
                if (gid != 0 && gid> 0) {
                    WHERE("v.gid=#{arg0}");
                }
                if (cid != 0 && cid> 0) {
                    WHERE("v.cid=#{arg1}");
                }
            }

        }.toString();
        return sql;
    }
}


