package com.k12.utils;

public class TestPaper {

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
        return "TestPaper{" +
                "gid=" + gid +
                ", cid=" + cid +
                ", testSize=" + testSize +
                '}';

    }
}

