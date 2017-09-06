package com.k12.utils;

import java.util.List;

/**
 * Created by LB on 2017/9/5.
 */
public class Result<T> {
    private  int total;
    private List<T> rows;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
