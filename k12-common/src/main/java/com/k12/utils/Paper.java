package com.k12.utils;

/**
 * Created by Administrator on 2017/9/6/006.
 */
public class Paper {
    private int gid;
    private int cid;



    public int getTestSize() {
        return testSize;
    }

    public void setTestSize(int testSize) {
        this.testSize = testSize;
    }

    private int testSize;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "gid=" + gid +
                ", cid=" + cid +
                ", testSize=" + testSize +
                '}';

    }
}
