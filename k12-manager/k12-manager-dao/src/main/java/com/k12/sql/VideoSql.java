package com.k12.sql;

import com.k12.utils.Order;
import com.k12.utils.PageBean;
import org.apache.ibatis.jdbc.SQL;

/**
 * ��̬sqlʵ��ģ����ѯ
 * Created by LB on 2017/9/6.
 */


public class VideoSql {
    //select v.*,c.*,g.* from tb_video v left join tb_course c on v.cid=c.id
    // left join tb_grade g on v.gid=g.id limit #{counts},#{rows}
    public String selectByPage(PageBean pageBean, final String gid, final String cid, Order order, final String statusId, final String name) {
        String sql = new SQL() {
            {
                SELECT("v.*,g.grade grade,c.course course,case v.status when 1 then '����' when 2 then '�¼�' when 3 then 'ɾ��'end as statusName");
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


