package com.k12.domain;

/**
 * Created by Administrator on 2017/9/2/002.
 */
public class Tb_Grade {
    private int id;
    private String grade;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Tb_Grade{" +
                "id=" + id +
                ", grade='" + grade + '\'' +
                '}';
    }
}
