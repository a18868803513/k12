package com.k12.utils;

import java.util.List;


/**
 * Created by Administrator on 2017/9/2/002.
 */
public class Page {
    private int pageSize; //一页的数目
    private List<?> rows;//一页的内容
    private int page;//当前页









    private int total;//总数







    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "TT{" +
                "pageSize=" + pageSize +
                ", rows=" + rows +
                ", page=" + page +
                ", total=" + total +
                '}';
    }
}
