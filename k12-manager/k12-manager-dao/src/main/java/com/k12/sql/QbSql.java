package com.k12.sql;


import com.k12.domain.Tb_Course;
import com.k12.domain.Tb_Grade;
import com.k12.utils.Order;
import com.k12.utils.Select;
import org.apache.ibatis.annotations.Case;
import org.apache.ibatis.jdbc.SQL;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class QbSql {
    public String selectByPage(int first,int end,Tb_Grade tb_grade,Tb_Course tb_course,Order order,String statusId,String question){
        String sql= new SQL(){
            {
                SELECT("q.*,g.grade grade,c.course course, case q.status when 1 then '正常' when 2 then '下架' when 3 then '删除' end as statusName");
                FROM("tb_questionbase q");
                LEFT_OUTER_JOIN("tb_grade g on q.gid=g.id");
                LEFT_OUTER_JOIN("tb_course c on q.cid=c.id");
                if (statusId!=null&&statusId.length()>0) {
                    if (Integer.parseInt(statusId)!=0) {
                        WHERE("q.status=#{arg5}");
                    }
                }
                if (tb_grade != null) {
                    WHERE("q.gid=#{arg2.id}");
                }
                if (tb_course != null) {
                        WHERE("q.cid=#{arg3.id}");
                    }
                /*if(order!=null && order.getSort()!=null && order.getOrder()!=null){
                    System.out.println("==========++===="+order);
                    ORDER_BY(" {param5.sort}");
                }*/
                if (question!=null && question.length()>0){
                    WHERE("question like  CONCAT('%', #{arg6},'%')");
                }

                }


        }.toString();
        if(order!=null && order.getSort()!=null && order.getOrder()!=null){
            sql+=" order by "+order.getOrderStr();
        }
        if (first>-1&&end>0){
            sql+=" limit #{arg0},#{arg1}";
        }
        return sql;

    }


    }


