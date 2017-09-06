package com.k12.utils;

/**
 * Created by LB on 2017/9/5.
 */
public class PageBean {
    private int page;
    private  int  rows;
    //private  int  counts;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getCounts() {
        return (page-1)*rows;
    }

}
