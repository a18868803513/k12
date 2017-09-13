package com.k12.domain;

/**
 * Created by Administrator on 2017/9/12/012.
 */
public class Tb_Test {
    private int id;
    private int uid;
    private int qid;
    private String userAnswer;
    private int status;

    @Override
    public String toString() {
        return "Tb_Test{" +
                "id=" + id +
                ", uid=" + uid +
                ", qid=" + qid +
                ", userAnswer='" + userAnswer + '\'' +
                ", status=" + status +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public String getUserAnswer() {
        return userAnswer;
    }

    public void setUserAnswer(String userAnswer) {
        this.userAnswer = userAnswer;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
