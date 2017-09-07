package com.k12.sql;

import com.k12.utils.Order;
import org.apache.ibatis.jdbc.SQL;

/**
 * Created by dwy on 2017/9/4.
 */
public class ProductSql {
    public String selectByPage(int first, int end, String gid, String cid,Order order,int statusId,String name) {
        String sql = new SQL() {
            {
                SELECT("p.*,g.grade grade,c.course course,case p.status when 1 then '正常' when 2 then '下架' when 3 then '删除' end as statusName");
                FROM("tb_product p");
                LEFT_OUTER_JOIN("tb_grade g on p.gid=g.id");
                LEFT_OUTER_JOIN("tb_course c on p.cid=c.id");
                if (gid!=null && gid.length() > 0) {
                    WHERE("p.gid=#{arg2}");
                }
                if (cid!=null && cid.length()>0) {
                    WHERE("p.cid=#{arg3}");
                }
                if (statusId!=0){
                    WHERE("p.status=#{arg5}");
                }
                if (name!=null&&name.length()>0){
                    WHERE("p.name like concat(concat('%',#{arg6}),'%')");
                }
            }
        }.toString();
        if(order!=null && order.getSort()!=null && order.getOrder()!=null){
            sql+=" order by "+order.getOrderStr();
        }
        sql=sql+" limit #{arg0},#{arg1}";
        return sql;
    }
}
