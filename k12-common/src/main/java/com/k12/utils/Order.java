package com.k12.utils;


/**
 * Created by Administrator on 2017/9/5/005.
 */
public class Order {
    private String sort;
    private String order;

    public String getOrderStr() {
        String sortA[]=sort.split(",");
        String orderA[]=order.split(",");
        String orderStr="";
        for (int i=0;i<sortA.length;i++){
            if (i!=sortA.length-1) {
                if (isChinese.isChinese(sortA[i])){

                    orderStr = orderStr + "CONVERT("+sortA[i] + " " + orderA[i]+"USING gbk)"+ ",";
                }else {
                    orderStr = orderStr + sortA[i] + " " + orderA[i] + ",";
                }
            }else{
                if (isChinese.isChinese(sortA[i])){

                    orderStr = orderStr + "CONVERT("+sortA[i] + " " + orderA[i]+"USING gbk)";
                }else {
                    orderStr = orderStr + sortA[i] + " " + orderA[i];
                }
            }
        }
        System.out.println(orderStr);
        return orderStr;
    }



    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return "Order{" +
                "sort='" + sort + '\'' +
                ", order='" + order + '\'' +
                '}';
    }
}
